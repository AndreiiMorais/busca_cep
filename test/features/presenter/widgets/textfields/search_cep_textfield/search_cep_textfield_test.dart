import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/presenter/widgets/textfields/search_cep_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

part 'search_cep_textfield_test_matcher.dart';

void main() {
  testWidgets(
    "Should find a textfield that matches the matcher",
    (WidgetTester tester) async {
      const error = 'error';
      final textField = find.byWidgetPredicate(
        (widget) => _textFieldMatcher(widget, error),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: CustomTheme.themeData(),
          home: Scaffold(
            body: SearchCepTextfield(
              controller: TextEditingController(),
              onSubmitted: (text) {},
              error: error,
            ),
          ),
        ),
      );
      expect(textField, findsOneWidget);
    },
  );
}
