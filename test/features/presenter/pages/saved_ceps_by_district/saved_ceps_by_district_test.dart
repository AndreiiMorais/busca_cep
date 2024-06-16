import 'dart:async';

import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:busca_cep/features/presenter/pages/saved_ceps_by_district/saved_ceps_by_district.dart';
import 'package:busca_cep/features/presenter/widgets/cards/cep_card.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../utils/mocks.dart';

class MockCepEntity extends Mock implements CepEntity {}

void main() {
  late StreamController<CepState> state;
  final CepEntity cep = MockCepEntity();

  setUp(() {
    state = StreamController<CepState>();
    Mocks.initializeBlocForTest(state);
    when(() => cep.district).thenReturn('Centro');
    when(() => cep.cep).thenReturn('00000000');
    when(() => cep.city).thenReturn('Agudo');
  });

  tearDown(() {
    serviceLocator.reset();
  });

  //Common finders
  final title = find.text('Centro');

  final card = find.byType(CepCard);

  final list = find.byType(ListView);

  testWidgets(
    "Should render a screen with title, 2 cards in a list and should not rebuild if receives a different state",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CustomTheme.themeData(),
          home: SavedCepsByDistrict(),
        ),
      );
      state.add(CepState.loadedCepsByDistrict([cep, cep]));
      await tester.pump();
      expect(title, findsOneWidget);
      expect(card, findsNWidgets(2));
      expect(list, findsOneWidget);
      state.add(const CepState.initial());
      await tester.pump();
      expect(title, findsOneWidget);
      expect(card, findsNWidgets(2));
      expect(list, findsOneWidget);
    },
  );
}
