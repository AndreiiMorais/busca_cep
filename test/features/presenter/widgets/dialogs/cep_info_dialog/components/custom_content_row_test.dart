import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/presenter/widgets/dialogs/cep_info_dialog/components/custom_content_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

part 'custom_content_row_test_matchers.dart';

void main() {
  //Common finders
  final padding = find.byWidgetPredicate((widget) => _paddingMatcher(widget));

  final row = find.byWidgetPredicate((widget) => _rowMatcher(widget));

  final firstText = find.byWidgetPredicate(
    (widget) => _textMatcher(widget: widget, text: 'firstText'),
  );

  final secondText = find.byWidgetPredicate(
    (widget) => _textMatcher(
      widget: widget,
      text: 'secondText',
      textAlign: TextAlign.end,
    ),
  );

  testWidgets(
    "Should render with the correct widgets",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: CustomTheme.themeData(),
          home: const CustomContentRow(
            leadingText: 'firstText',
            trailingText: 'secondText',
          ),
        ),
      );

      expect(padding, findsOneWidget);
      expect(row.hitTestable(), findsOneWidget);
      expect(find.byType(Flexible), findsNWidgets(2));
      expect(firstText, findsOneWidget);
      expect(secondText, findsOneWidget);
    },
  );
}
