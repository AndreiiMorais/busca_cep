import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:busca_cep/features/domain/usecases/get_saved_ceps_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCepRepository extends Mock implements CepRepository {}

class MockCepEntity extends Mock implements CepEntity {}

void main() {
  late GetSavedCepsUsecase usecase;
  late CepRepository repository;
  late CepEntity entity;

  setUp(() {
    entity = MockCepEntity();
    repository = MockCepRepository();
    usecase = GetSavedCepsUsecaseImpl(repository);
  });

  test(
    'Should return a list of CepEntity when called',
    () async {
      //Arrange
      when(() => repository.getSavedCeps()).thenReturn(Right([entity]));

      //Act
      final result = usecase();

      //Assert
      expect(result.isRight(), isTrue);
      expect(result.fold(id, id), isA<List<CepEntity>>());
      expect(result.fold(id, id), equals([entity]));
      verify(() => repository.getSavedCeps()).called(1);
    },
  );
}
