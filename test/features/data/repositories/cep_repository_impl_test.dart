import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/data/models/cep_model.dart';
import 'package:busca_cep/features/data/repositories/cep_repository_impl.dart';
import 'package:busca_cep/features/data/repositories/search_cep_datasource.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_test/hive_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBox<CepEntity> extends Mock implements Box<CepEntity> {}

class MockCepEntity extends Mock implements CepEntity {}

class MockCepModel extends Mock implements CepModel {}

class MockSearchCepDatasource extends Mock implements SearchCepDatasource {}

void main() {
  late CepEntity entity;
  late CepModel model;
  late Box<CepEntity> box;
  late SearchCepDatasource datasource;
  late CepRepository repository;

  setUp(() async {
    await setUpTestHive();
    entity = MockCepEntity();
    model = MockCepModel();
    registerFallbackValue(entity);
    box = MockBox();
    datasource = MockSearchCepDatasource();
    repository = CepRepositoryImpl(
      box: box,
      datasource: datasource,
    );
  });

  tearDown(() async {
    await tearDownTestHive();
  });

  test(
    "Should return a list of CepEntity when getSavedCeps is called",
    () {
      //Arrange
      when(() => box.values).thenReturn(<CepEntity>{entity});

      //Act
      final result = repository.getSavedCeps();

      //Assert
      expect(result, isA<List<CepEntity>>());
      expect(result, equals([entity]));
      verify(() => box.values).called(1);
    },
  );

  test(
    "Should return Right(true) when SaveCep is called with a new key",
    () async {
      //Arrange
      when(() => box.put(any(), any())).thenAnswer(
        (_) => Future.value(),
      );
      when(() => box.containsKey(any())).thenReturn(false);
      when(() => entity.cep).thenReturn('00000000');

      //Act
      final result = await repository.saveCep(entity);

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isTrue);
      verify(() => box.put('00000000', entity)).called(1);
    },
  );

  test(
    "Should return Left(DuplicatedKeyFailure) when SaveCep is called with a duplicated key",
    () async {
      //Arrange
      when(() => box.put(any(), any())).thenAnswer(
        (_) => Future.value(),
      );
      when(() => box.containsKey(any())).thenReturn(true);
      when(() => entity.cep).thenReturn('00000000');

      //Act
      final result = await repository.saveCep(entity);

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<DuplicatedKeyFailure>());
      verifyNever(() => box.put(any(), any()));
    },
  );

  test(
    "Should return a Right(CepEntity) when receives sucessful response from datasource",
    () async {
      //Arrange
      when(() => datasource(any())).thenAnswer(
        (_) async => model,
      );

      //Act
      final result = await repository.searchCep('12345678');

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isA<CepEntity>());
      verify(() => datasource('12345678')).called(1);
    },
  );

  test(
    "Should return Left(NotFoundFailure) when receives an exception of type BadRequestException when calling searchCep",
    () async {
      //Arrange
      when(() => datasource(any())).thenThrow(BadRequestException());

      //Act
      final result = await repository.searchCep('12345678');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<BadInputFailure>());
      verify(() => datasource('12345678')).called(1);
    },
  );

  test(
    "Should return Left(NotFoundFailure) when receives an exception of type BadRequestException when calling searchCep",
    () async {
      //Arrange
      when(() => datasource(any())).thenThrow(NotFoundException());

      //Act
      final result = await repository.searchCep('12345678');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<NotFoundFailure>());
      verify(() => datasource('12345678')).called(1);
    },
  );

  test(
    "Should return Left(UnknownDatasourceFailure) when receives an UnknownDatasourceException when calling searchCep",
    () async {
      //Arrange
      when(() => datasource(any())).thenThrow(UnknownDatasourceException());

      //Act
      final result = await repository.searchCep('12345678');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<UnknownDatasourceFailure>());
      verify(() => datasource('12345678')).called(1);
    },
  );

  test(
    "Should return Left(UnknownDatasourceFailure) when receives any untreated Exception when calling searchCep",
    () async {
      //Arrange
      when(() => datasource(any())).thenThrow(Exception());

      //Act
      final result = await repository.searchCep('12345678');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<UnknownDatasourceFailure>());
      verify(() => datasource('12345678')).called(1);
    },
  );
}
