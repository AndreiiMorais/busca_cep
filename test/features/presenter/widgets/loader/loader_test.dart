import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/presenter/widgets/loader/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

part 'loader_test_matcher.dart';

void main() {
  //Common finders
  final background = find.byWidgetPredicate(
    (widget) => _backgroundMatcher(widget),
  );

  final isCentered = find.byWidgetPredicate(
    (widget) => _isCenteredMatcher(widget),
  );

  final loaderBkg = find.byWidgetPredicate(
    (widget) => _loaderBackgroundMatcher(widget),
  );

  final loader = find.byWidgetPredicate(
    (widget) => _loaderColorMatcher(widget),
  );

  testWidgets(
    "Should guarantee that the loader is centered on screen, with a dark background and with the right color, and guarantee that it can be called and dismissed by context",
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
      expect(loader, findsNothing);
      key.currentContext!.showLoader();
      await tester.pump();
      expect(background, findsOneWidget);
      expect(isCentered, findsOneWidget);
      expect(loaderBkg, findsOneWidget);
      expect(loader, findsOneWidget);
      key.currentContext!.hideLoader();
      await tester.pump();
      expect(loader, findsNothing);
    },
  );
}
