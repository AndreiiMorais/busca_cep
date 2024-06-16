import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:busca_cep/features/domain/usecases/save_cep_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCepRepository extends Mock implements CepRepository {}

class MockCepEntity extends Mock implements CepEntity {}

void main() {
  final CepEntity cep = MockCepEntity();
  late CepRepository repository;
  late SaveCepUsecase usecase;

  setUp(() {
    registerFallbackValue(cep);
    repository = MockCepRepository();
    usecase = SaveCepUsecaseImpl(repository);
  });

  test(
    'Should return a Right(true) when the Future completes',
    () async {
      //Arrange
      when(() => repository.saveCep(any())).thenAnswer(
        (_) async => const Right(true),
      );

      //Act
      final result = await usecase(cep);

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isTrue);
      verify(() => repository.saveCep(cep)).called(1);
    },
  );

  test(
    'Should return Left(DuplicatedKeyFailure) when receives an Failure',
    () async {
      //Arrange
      when(() => repository.saveCep(any())).thenAnswer(
        (_) async => const Left(DuplicatedKeyFailure()),
      );

      //Act
      final result = await usecase(cep);

      //Assert
      expect(result.isLeft(), isTrue);
      expect(result.fold(id, id), isA<Failure>());
      expect(result.fold(id, id), isA<DuplicatedKeyFailure>());
      verify(() => repository.saveCep(cep)).called(1);
    },
  );
}
