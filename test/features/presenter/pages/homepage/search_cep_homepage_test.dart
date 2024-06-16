import 'dart:async';

import 'package:busca_cep/features/presenter/bloc/cep_bloc.dart';
import 'package:busca_cep/features/presenter/pages/homepage/search_cep_homepage.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../utils/mocks.dart';

part 'search_cep_homepage_test_matchers.dart';

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
  final title = find.text('Busca');

  final image = find.image(const AssetImage('assets/address-search.jpg'));

  final columnPadding = find.byWidgetPredicate(
    (widget) => _paddingMatcher(
      widget: widget,
      padding: const EdgeInsets.all(16),
    ),
  );

  final column = find.byWidgetPredicate((widget) => _columnMatcher(widget));

  final rowPadding = find.byWidgetPredicate(
    (widget) => _paddingMatcher(
      widget: widget,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
  );

  final row = find.byWidgetPredicate((widget) => _rowMatcher(widget));

  final savedsButton = find.byWidgetPredicate(
    (widget) => _savedsButton(widget),
  );
  final searchButton = find.byWidgetPredicate(
    (widget) => _searchButton(widget),
  );

  testWidgets(
    "Should render a screen with a title, an image, a SearchCepTextfield, two ElevatedButtons and one PopUpMenuButton",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SearchCepHomepage(),
        ),
      );
      expect(title, findsOneWidget);
      expect(image, findsOneWidget);
      expect(columnPadding, findsOneWidget);
      expect(column, findsOneWidget);
      expect(rowPadding, findsOneWidget);
      expect(row, findsOneWidget);
      expect(savedsButton, findsOneWidget);
      expect(searchButton, findsOneWidget);
    },
  );
}
