import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/presenter/widgets/cards/cep_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../utils/widget_test_matchers.dart';

class MockCepEntity extends Mock implements CepEntity {}

void main() {
  late CepEntity cep;
  setUp(() {
    cep = MockCepEntity();
    when(() => cep.cep).thenReturn('00000000');
    when(() => cep.city).thenReturn('Agudo');
  });

  //Common Finders
  final card = find.byWidgetPredicate(
    (widget) => WidgetTestMatchers.cardMatcher(
      widget: widget,
    ),
  );
  final listTile = find.byWidgetPredicate(
    (widget) => WidgetTestMatchers.cepListTileMatcher(widget: widget),
  );
  final title = find.byWidgetPredicate(
    (widget) => WidgetTestMatchers.listTileTextMatcher(
        widget: widget, text: '00000000'),
  );
  final subtitle = find.byWidgetPredicate(
    (widget) =>
        WidgetTestMatchers.listTileTextMatcher(widget: widget, text: 'Agudo'),
  );
  final icon = find.byWidgetPredicate(
    (widget) => WidgetTestMatchers.listTileIconMatcher(widget: widget),
  );

  testWidgets(
    "Should render the widget and guarantee that the widgetTree is correct with it",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CustomTheme.themeData(),
          home: CepCard(
            cep: cep,
            onTap: () {},
          ),
        ),
      );
      expect(card.hitTestable(), findsOneWidget);
      expect(listTile.hitTestable(), findsOneWidget);
      expect(title.hitTestable(), findsOneWidget);
      expect(subtitle.hitTestable(), findsOneWidget);
      expect(icon.hitTestable(), findsOneWidget);
    },
  );
}
