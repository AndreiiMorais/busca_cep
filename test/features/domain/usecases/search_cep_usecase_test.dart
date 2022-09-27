import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:busca_cep/features/domain/usecases/search_cep_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCepRepository extends Mock implements CepRepository {}

class MockCepEntity extends Mock implements CepEntity {}

void main() {
  late CepRepository repository;
  late SearchCepUsecase usecase;
  late CepEntity entity;

  setUp(() {
    entity = MockCepEntity();
    repository = MockCepRepository();
    usecase = SearchCepUsecaseImpl(repository);
  });

  test(
    'Should return a cep entity when called with an numeric parameter',
    () async {
      //Arrange
      when(() => repository.searchCep(any())).thenAnswer(
        (_) async => Right(entity),
      );

      //Act
      final result = await usecase('12345678');

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isA<CepEntity>());
      expect(result.fold(id, id), equals(entity));
      verify(() => repository.searchCep('12345678')).called(1);
    },
  );

  test(
    'Should return a CepLengthFailure when called with less than 8 numbers',
    () async {
      //Act
      final result = await usecase('123456');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<CepLengthFailure>());
      verifyNever(() => repository.searchCep(any()));
    },
  );
  test(
    'Should return a CepLengthFailure when called with more than 8 numbers',
    () async {
      //Act
      final result = await usecase('123456789');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<CepLengthFailure>());
      verifyNever(() => repository.searchCep(any()));
    },
  );

  test(
    'Should return a BadInputFailure when called with non numbers',
    () async {
      //Act
      final result = await usecase('test');

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<BadInputFailure>());
      verifyNever(() => repository.searchCep(any()));
    },
  );
}
