import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/presenter/widgets/snackbars/error_snackbar/error_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

part 'error_snackbar_test_matchers.dart';

void main() {
  final content = find.byWidgetPredicate((widget) => _contentMatcher(widget));

  final snackbar = find.byWidgetPredicate(
    (widget) => _errorSnackbarMatcher(widget),
  );
  final text = find.byWidgetPredicate((widget) => _textMatcher(widget));

  final button = find.byWidgetPredicate((widget) => _buttonMatcher(widget));

  testWidgets(
    "Should find a snackbar with the correct background color and the correct texts",
    (WidgetTester tester) async {
      final key = GlobalKey<ScaffoldState>();
      await tester.pumpWidget(
        MaterialApp(
          theme: CustomTheme.themeData(),
          home: Scaffold(
            key: key,
          ),
        ),
      );
      ScaffoldMessenger.of(key.currentContext!).showSnackBar(
        ErrorSnackbar(
          context: key.currentContext!,
        ),
      );
      await tester.pump();
      expect(content, findsOneWidget);
      expect(snackbar, findsOneWidget);
      expect(text, findsOneWidget);
      expect(button, findsOneWidget);
    },
  );
}
