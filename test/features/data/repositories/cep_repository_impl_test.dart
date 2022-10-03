import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/data/datasources/api/search_cep_datasource.dart';
import 'package:busca_cep/features/data/datasources/local/hive_datasource.dart';
import 'package:busca_cep/features/data/models/cep_model.dart';
import 'package:busca_cep/features/data/repositories/cep_repository_impl.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHiveDatasource extends Mock implements HiveDatasource {}

class MockCepEntity extends Mock implements CepEntity {}

class MockCepModel extends Mock implements CepModel {}

class MockSearchCepDatasource extends Mock implements SearchCepDatasource {}

void main() {
  late CepEntity entity;
  late CepModel model;
  late HiveDatasource hive;
  late SearchCepDatasource datasource;
  late CepRepository repository;

  setUp(() async {
    entity = MockCepEntity();
    model = MockCepModel();
    registerFallbackValue(entity);
    hive = MockHiveDatasource();
    datasource = MockSearchCepDatasource();
    repository = CepRepositoryImpl(
      localDatasource: hive,
      datasource: datasource,
    );
  });

  test(
    "Should return a list of CepEntity when getSavedCeps is called",
    () {
      //Arrange
      when(() => hive.getSavedCeps()).thenReturn(Right([entity]));

      //Act
      final result = repository.getSavedCeps();

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isA<List<CepEntity>>());
      expect(result.fold(id, id), equals([entity]));
      verify(() => hive.getSavedCeps()).called(1);
    },
  );

  test(
    "Should return Right(true) when SaveCep is called with a new key",
    () async {
      //Arrange
      when(() => hive.saveCep(any())).thenAnswer(
        (_) async => const Right(true),
      );
      when(() => entity.cep).thenReturn('00000000');

      //Act
      final result = await repository.saveCep(entity);

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isTrue);
      verify(() => hive.saveCep(entity)).called(1);
    },
  );

  test(
    "Should return Left(DuplicatedKeyFailure) when SaveCep is called with a duplicated key",
    () async {
      //Arrange
      when(() => hive.saveCep(
            any(),
          )).thenAnswer(
        (_) async => const Left(DuplicatedKeyFailure()),
      );

      //Act
      final result = await repository.saveCep(entity);

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<DuplicatedKeyFailure>());
    },
  );

  test(
    "Should return a Right(CepEntity) when receives sucessful response from datasource",
    () async {
      //Arrange
      when(() => datasource(any())).thenAnswer(
        (_) async => Right(model),
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
      when(() => datasource(any())).thenAnswer(
        (_) async => Left(BadRequestException()),
      );

      //Act
      final result = await repository.searchCep('12345678');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<ServerException>());
      expect(result.fold(id, id), isA<BadRequestException>());
      verify(() => datasource('12345678')).called(1);
    },
  );

  test(
    "Should return Left(NotFoundFailure) when receives an exception of type BadRequestException when calling searchCep",
    () async {
      //Arrange
      when(() => datasource(any())).thenAnswer(
        (_) async => Left(NotFoundException()),
      );

      //Act
      final result = await repository.searchCep('12345678');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<ServerException>());
      expect(result.fold(id, id), isA<NotFoundException>());
      verify(() => datasource('12345678')).called(1);
    },
  );

  test(
    "Should return Left(UnknownDatasourceFailure) when receives an UnknownDatasourceException when calling searchCep",
    () async {
      //Arrange
      when(() => datasource(any())).thenAnswer(
        (_) async => Left(UnknownDatasourceException()),
      );

      //Act
      final result = await repository.searchCep('12345678');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<ServerException>());
      expect(result.fold(id, id), isA<UnknownDatasourceException>());
      verify(() => datasource('12345678')).called(1);
    },
  );

  test(
    "Should return Left(UnknownDatasourceFailure) when receives any untreated Exception when calling searchCep",
    () async {
      //Arrange
      when(() => datasource(any())).thenAnswer(
        (_) async => Left(UnknownDatasourceException()),
      );

      //Act
      final result = await repository.searchCep('12345678');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<ServerException>());
      expect(result.fold(id, id), isA<UnknownDatasourceException>());
      verify(() => datasource('12345678')).called(1);
    },
  );
}
