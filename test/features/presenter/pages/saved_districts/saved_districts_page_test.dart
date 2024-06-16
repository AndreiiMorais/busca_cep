import 'dart:async';

import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:busca_cep/features/presenter/pages/saved_districts/saved_districts_page.dart';
import 'package:busca_cep/features/presenter/widgets/cards/district_card.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../utils/mocks.dart';

void main() {
  late StreamController<CepState> state;

  setUp(() {
    state = StreamController<CepState>();
    Mocks.initializeBlocForTest(state);
  });

  tearDown(() {
    serviceLocator.reset();
  });

  //Common finders
  final title = find.text('Localidades');

  final loader = find.byType(CircularProgressIndicator);

  final card = find.byType(DistrictCard);

  final list = find.byType(ListView);

  testWidgets(
    "Should render a screen with title, and a circularProgressIndicator in the middle when loading",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CustomTheme.themeData(),
          home: SavedDistrictsPage(),
        ),
      );
      state.add(const CepState.loadingSavedDistricts());
      await tester.pump();
      expect(title, findsOneWidget);
      expect(loader, findsOneWidget);
      expect(card, findsNothing);
      expect(list, findsNothing);
    },
  );

  testWidgets(
    "Should render a screen with title, and a list with 2 cards, and the page should not change when a different state is emitted by the bloc",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CustomTheme.themeData(),
          home: SavedDistrictsPage(),
        ),
      );
      state.add(const CepState.loadedSavedDistricts(['card1', 'card2']));
      await tester.pump();
      expect(title, findsOneWidget);
      expect(loader, findsNothing);
      expect(card, findsNWidgets(2));
      expect(list, findsOneWidget);
      state.add(const CepState.initial());
      await tester.pump();
      expect(title, findsOneWidget);
      expect(loader, findsNothing);
      expect(card, findsNWidgets(2));
      expect(list, findsOneWidget);
    },
  );
}
