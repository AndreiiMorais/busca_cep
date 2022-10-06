import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:mocktail/mocktail.dart';

class MockCepBloc extends Mock implements CepBloc {}

class Mocks {
  static void initializeBlocForTest(StreamController<CepState> state) {
    serviceLocator.registerSingleton<CepBloc>(MockCepBloc());
    final bloc = serviceLocator<CepBloc>();
    whenListen(
      bloc,
      state.stream,
      initialState: const CepState.initial(),
    );
  }

  static const cepApiResponse = '''{
    "cep": "01001-000",
    "logradouro": "Praça da Sé",
    "complemento": "lado ímpar",
    "bairro": "Sé",
    "localidade": "São Paulo",
    "uf": "SP",
    "ibge": "3550308",
    "gia": "1004",
    "ddd": "11",
    "siafi": "7107"
  }
  ''';

  static const cepBadRequestResponse = '''{
  "erro": "true"
}
''';
}
