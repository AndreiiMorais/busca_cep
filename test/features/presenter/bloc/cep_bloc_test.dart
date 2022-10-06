import 'package:bloc_test/bloc_test.dart';
import 'package:busca_cep/core/errors/failures.dart';
import 'package:busca_cep/core/errors/server_exceptions.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/domain/usecases/get_saved_ceps_usecase.dart';
import 'package:busca_cep/features/domain/usecases/save_cep_usecase.dart';
import 'package:busca_cep/features/domain/usecases/search_cep_usecase.dart';
import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late Failure genericFailure;
  late ServerException genericServerException;
  late SearchCepUsecase searchCepUsecase;
  late SaveCepUsecase saveCepUsecase;
  late GetSavedCepsUsecase getSavedCepsUsecase;
  late CepEntity cepEntity;

  setUp(() {
    genericFailure = MockFailure();
    genericServerException = MockServerException();
    cepEntity = MockCepEntity();
    searchCepUsecase = MockSearchCepUsecase();
    saveCepUsecase = MockSaveCepUsecase();
    getSavedCepsUsecase = MockGetSavedCepsUsecase();
    registerFallbackValue(cepEntity);
    serviceLocator.registerFactory<SearchCepUsecase>(
      () => searchCepUsecase,
    );
    serviceLocator.registerFactory<SaveCepUsecase>(
      () => saveCepUsecase,
    );
    serviceLocator.registerFactory<GetSavedCepsUsecase>(
      () => getSavedCepsUsecase,
    );
  });

  tearDown(() {
    serviceLocator.reset();
  });

  group(
    "Bloc initilization tests",
    () {
      test(
        "Should emit Initial() when initialized",
        () {
          final bloc = CepBloc();
          expect(bloc.state, const CepState.initial());
        },
      );
    },
  );

  group(
    "LoadCepInfoEvent related tests",
    () {
      blocTest<CepBloc, CepState>(
        'emits [MyState] when MyEvent is added.',
        setUp: () {
          when(() => searchCepUsecase(any())).thenAnswer(
            (_) async => Right(cepEntity),
          );
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(const CepEvent.loadCepInfo('12345678')),
        expect: () => <CepState>[
          const CepState.loadingCep(),
          CepState.loadedCep(cepEntity),
        ],
        verify: (_) {
          verify(() => searchCepUsecase(any())).called(1);
          verifyNever(() => getSavedCepsUsecase());
          verifyNever(() => saveCepUsecase(any()));
        },
      );

      blocTest<CepBloc, CepState>(
        'Should emit InexistentCepError when the response of the usecase is Left(NotFoundException)',
        setUp: () {
          when(() => searchCepUsecase(any())).thenAnswer(
            (_) async => Left(NotFoundException()),
          );
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(const CepEvent.loadCepInfo('123456')),
        expect: () => const <CepState>[
          CepState.loadingCep(),
          CepState.inexistentCepError(),
        ],
        verify: (_) {
          verify(() => searchCepUsecase(any())).called(1);
          verifyNever(() => getSavedCepsUsecase());
          verifyNever(() => saveCepUsecase(any()));
        },
      );

      blocTest<CepBloc, CepState>(
        'Should emit ShowErrorSnackbar when receives an unknown error from usecase',
        setUp: () {
          when(() => searchCepUsecase(any())).thenAnswer(
            (_) async => Left(genericServerException),
          );
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(const CepEvent.loadCepInfo('1234567')),
        expect: () => const <CepState>[
          CepState.loadingCep(),
          CepState.showErrorSnackbar(),
        ],
        verify: (_) {
          verify(() => searchCepUsecase(any())).called(1);
          verifyNever(() => getSavedCepsUsecase());
          verifyNever(() => saveCepUsecase(any()));
        },
      );
    },
  );

  group(
    "SaveCepEvent related tests",
    () {
      blocTest<CepBloc, CepState>(
        'Should emit SavingCep, call the usecase and then emit ShowSuccessSnackbar',
        setUp: () {
          when(() => saveCepUsecase(any())).thenAnswer(
            (_) async => const Right(true),
          );
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(CepEvent.saveCep(cepEntity)),
        expect: () => const <CepState>[
          CepState.savingCep(),
          CepState.showSuccessSnackbar(),
        ],
        verify: (_) {
          verify(() => saveCepUsecase(cepEntity)).called(1);
          verifyNever(() => searchCepUsecase(any()));
          verifyNever(() => getSavedCepsUsecase());
        },
      );

      blocTest<CepBloc, CepState>(
        'Should emit SavingCep, call the usecase and then emit ShowErrorSnackbar',
        setUp: () {
          when(() => saveCepUsecase(any())).thenAnswer(
            (_) async => Left(genericFailure),
          );
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(CepEvent.saveCep(cepEntity)),
        expect: () => const <CepState>[
          CepState.savingCep(),
          CepState.showErrorSnackbar(),
        ],
        verify: (_) {
          verify(() => saveCepUsecase(cepEntity)).called(1);
          verifyNever(() => searchCepUsecase(any()));
          verifyNever(() => getSavedCepsUsecase());
        },
      );
    },
  );

  group(
    "LoadSavedDistricts related tests",
    () {
      final cepEntity2 = MockCepEntity();
      blocTest<CepBloc, CepState>(
        'Should emit LoadingSavedDistricts, call the usecase and then emit LoadedSavedDistricts with a list of Strings',
        setUp: () {
          when(() => getSavedCepsUsecase()).thenReturn(
            Right(<CepEntity>[cepEntity, cepEntity2]),
          );
          when(() => cepEntity.district).thenReturn('');
          when(() => cepEntity2.district).thenReturn('Centro');
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(const CepEvent.loadSavedDistricts()),
        expect: () => const <CepState>[
          CepState.loadingSavedDistricts(),
          CepState.loadedSavedDistricts(['Centro', cepWithoutDistrict]),
        ],
        verify: (_) {
          verify(() => getSavedCepsUsecase()).called(1);
          verifyNever(() => searchCepUsecase(any()));
          verifyNever(() => saveCepUsecase(any()));
        },
      );

      blocTest<CepBloc, CepState>(
        'Should emit LoadingSavedDistricts, call the usecase and then emit a list with 2 results.',
        setUp: () {
          when(() => getSavedCepsUsecase()).thenReturn(
            Right(<CepEntity>[cepEntity, cepEntity2, cepEntity2]),
          );
          when(() => cepEntity.district).thenReturn('');
          when(() => cepEntity2.district).thenReturn('Centro');
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(const CepEvent.loadSavedDistricts()),
        expect: () => const <CepState>[
          CepState.loadingSavedDistricts(),
          CepState.loadedSavedDistricts(['Centro', cepWithoutDistrict]),
        ],
        verify: (_) {
          verify(() => getSavedCepsUsecase()).called(1);
          verifyNever(() => searchCepUsecase(any()));
          verifyNever(() => saveCepUsecase(any()));
        },
      );

      blocTest<CepBloc, CepState>(
        'Should emit LoadingSavedDistricts, call the usecase and then emit an empty list',
        setUp: () {
          when(() => getSavedCepsUsecase()).thenReturn(
            const Right(<CepEntity>[]),
          );
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(const CepEvent.loadSavedDistricts()),
        expect: () => const <CepState>[
          CepState.loadingSavedDistricts(),
          CepState.loadedSavedDistricts([]),
        ],
        verify: (_) {
          verify(() => getSavedCepsUsecase()).called(1);
          verifyNever(() => searchCepUsecase(any()));
          verifyNever(() => saveCepUsecase(any()));
        },
      );

      blocTest<CepBloc, CepState>(
        'Should emit LoadingSavedDistricts, call the usecase and then emit ShowErrorSnackbar',
        setUp: () {
          when(() => getSavedCepsUsecase()).thenReturn(Left(genericFailure));
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(const CepEvent.loadSavedDistricts()),
        expect: () => const <CepState>[
          CepState.loadingSavedDistricts(),
          CepState.showErrorSnackbar(),
        ],
        verify: (_) {
          verify(() => getSavedCepsUsecase()).called(1);
          verifyNever(() => searchCepUsecase(any()));
          verifyNever(() => saveCepUsecase(any()));
        },
      );
    },
  );

  group(
    "LoadSavedCeps related tests",
    () {
      final cepEntity2 = MockCepEntity();
      final cepEntity3 = MockCepEntity();
      final cepEntity4 = MockCepEntity();
      blocTest<CepBloc, CepState>(
        'Should emit LoadingCepsByDistrict, call the usecase and then emit LoadedCepsByDistrict with a list with 3 CepEntities',
        setUp: () {
          when(() => getSavedCepsUsecase()).thenReturn(Right(<CepEntity>[
            cepEntity,
            cepEntity2,
            cepEntity3,
            cepEntity4,
          ]));
          when(() => cepEntity.district).thenReturn('Centro');
          when(() => cepEntity2.district).thenReturn('Centro');
          when(() => cepEntity3.district).thenReturn('Centro');
          when(() => cepEntity4.district).thenReturn('');
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(const CepEvent.loadSavedCeps('Centro')),
        expect: () => <CepState>[
          const CepState.loadingCepsByDistrict(),
          CepState.loadedCepsByDistrict(
            <CepEntity>[
              cepEntity,
              cepEntity2,
              cepEntity3,
            ],
          ),
        ],
        verify: (_) {
          verify(() => getSavedCepsUsecase()).called(1);
          verifyNever(() => searchCepUsecase(any()));
          verifyNever(() => saveCepUsecase(any()));
        },
      );

      blocTest<CepBloc, CepState>(
        'Should emit LoadingCepsByDistrict, call the usecase and then emit LoadedCepsByDistrict with a list of CepEntity of empty districts',
        setUp: () {
          when(() => getSavedCepsUsecase()).thenReturn(Right(<CepEntity>[
            cepEntity,
            cepEntity2,
            cepEntity3,
            cepEntity4,
          ]));
          when(() => cepEntity.district).thenReturn('');
          when(() => cepEntity2.district).thenReturn('');
          when(() => cepEntity3.district).thenReturn('Centro');
          when(() => cepEntity4.district).thenReturn('');
        },
        build: () => CepBloc(),
        act: (bloc) =>
            bloc.add(const CepEvent.loadSavedCeps(cepWithoutDistrict)),
        expect: () => <CepState>[
          const CepState.loadingCepsByDistrict(),
          CepState.loadedCepsByDistrict(
            <CepEntity>[
              cepEntity,
              cepEntity2,
              cepEntity4,
            ],
          )
        ],
        verify: (_) {
          verify(() => getSavedCepsUsecase()).called(1);
          verifyNever(() => searchCepUsecase(any()));
          verifyNever(() => saveCepUsecase(any()));
        },
      );

      blocTest<CepBloc, CepState>(
        'Should emit LoadingCepsByDistrict, call the usecase and then emit ShowErrorSnackbar',
        setUp: () {
          when(() => getSavedCepsUsecase()).thenReturn(Left(genericFailure));
        },
        build: () => CepBloc(),
        act: (bloc) => bloc.add(const CepEvent.loadSavedCeps('Centro')),
        expect: () => const <CepState>[
          CepState.loadingCepsByDistrict(),
          CepState.showErrorSnackbar(),
        ],
        verify: (_) {
          verify(() => getSavedCepsUsecase()).called(1);
          verifyNever(() => searchCepUsecase(any()));
          verifyNever(() => saveCepUsecase(any()));
        },
      );
    },
  );

}

class MockCepEntity extends Mock implements CepEntity {}

class MockFailure extends Mock implements Failure {}

class MockGetSavedCepsUsecase extends Mock implements GetSavedCepsUsecase {}

class MockSaveCepUsecase extends Mock implements SaveCepUsecase {}

class MockSearchCepUsecase extends Mock implements SearchCepUsecase {}

class MockServerException extends Mock implements ServerException {}
