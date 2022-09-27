import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/repositories/cep_repository.dart';
import 'package:busca_cep/features/domain/usecases/get_searched_ceps_list_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCepRepository extends Mock implements CepRepository {}

class MockCepEntity extends Mock implements CepEntity {}

void main() {
  late GetSearchedCepsListUsecase usecase;
  late CepRepository repository;
  late CepEntity entity;

  setUp(() {
    entity = MockCepEntity();
    repository = MockCepRepository();
    usecase = GetSearchedCepsListUsecaseImpl(repository);
  });

  test(
    'Should return a list of CepEntity when called',
    () async {
      //Arrange
      when(() => repository.getSearchedCepsList()).thenAnswer(
        (_) async => [entity],
      );

      //Act
      final result = await usecase();

      //Assert
      expect(result, isA<List<CepEntity>>());
      expect(result, equals([entity]));
      verify(() => repository.getSearchedCepsList()).called(1);
    },
  );
}
