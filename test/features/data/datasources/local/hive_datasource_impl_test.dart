import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/features/data/datasources/local/hive_datasource.dart';
import 'package:busca_cep/features/data/datasources/local/hive_datasource_impl.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';

class MockBox<CepEntity> extends Mock implements Box<CepEntity> {}

class MockCepEntity extends Mock implements CepEntity {}

void main() {
  late CepEntity entity;
  late Box<CepEntity> box;
  late HiveDatasource datasource;

  setUp(() {
    entity = MockCepEntity();
    registerFallbackValue(entity);
    box = MockBox();
    datasource = HiveDatasourceImpl(box);

    when(() => entity.cep).thenReturn('000000000');
  });

  test(
    "Should call box.put correctly when called saveCep with a new key, and then return Right(true)",
    () async {
      //Arrange
      when(() => box.put(any(), any())).thenAnswer(
        (_) => Future.value(),
      );
      when(() => box.containsKey(any())).thenReturn(false);

      //Act
      final result = await datasource.saveCep(entity);

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isTrue);
      verify(() => box.put('000000000', entity)).called(1);
    },
  );
  test(
    "Should return Left(DuplicatedKey) when called with an existent key",
    () async {
      //Arrange
      when(() => box.containsKey(any())).thenReturn(true);

      //Act
      final result = await datasource.saveCep(entity);

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<DuplicatedKeyFailure>());
      verifyNever(() => box.put('000000000', entity));
    },
  );

  test(
    "Should return Right with a list of CepEntity when called with opened box",
    () {
      //Arrange
      when(() => box.values).thenReturn([entity]);
      when(() => box.isOpen).thenReturn(true);

      //Act
      final result = datasource.getSavedCeps();

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isA<List<CepEntity>>());
      expect(result.fold(id, id), equals([entity]));
      verify(() => box.values).called(1);
    },
  );

  test(
    "Should return Left(ClosedHiveBoxFailure) when called on a closed box",
    () {
      //Arrange
      when(() => box.isOpen).thenReturn(false);

      //Act
      final result = datasource.getSavedCeps();

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<ClosedHiveBoxFailure>());
      verifyNever(() => box.values);
    },
  );
}
