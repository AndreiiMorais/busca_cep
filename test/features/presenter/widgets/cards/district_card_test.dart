import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/presenter/widgets/cards/district_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../utils/widget_test_matchers.dart';

void main() {
  //Common Finders
  final card = find.byWidgetPredicate(
    (widget) => WidgetTestMatchers.cardMatcher(
      widget: widget,
    ),
  );
  final listTile = find.byWidgetPredicate(
    (widget) => WidgetTestMatchers.districtListTileMatcher(widget: widget),
  );
  final title = find.byWidgetPredicate(
    (widget) => WidgetTestMatchers.listTileTextMatcher(
        widget: widget, text: 'districtTitle'),
  );
  final icon = find.byWidgetPredicate(
    (widget) => WidgetTestMatchers.listTileIconMatcher(widget: widget),
  );

  testWidgets(
    "Should find the correct widgets and guarantee that they are visible",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CustomTheme.themeData(),
          home: DistrictCard(
            district: 'districtTitle',
            onTap: () {},
          ),
        ),
      );
      expect(card.hitTestable(), findsOneWidget);
      expect(listTile.hitTestable(), findsOneWidget);
      expect(title.hitTestable(), findsOneWidget);
      expect(icon.hitTestable(), findsOneWidget);
    },
  );
}
