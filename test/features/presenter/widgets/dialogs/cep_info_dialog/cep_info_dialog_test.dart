import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:busca_cep/features/presenter/widgets/dialogs/cep_info_dialog/cep_info_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

part 'cep_info_dialog_test_matchers.dart';

class MockCepEntity extends Mock implements CepEntity {}

void main() {
  final CepEntity cepEntity = MockCepEntity();
  const cep = 'cep';
  const uf = 'uf';
  const city = 'city';
  const complement = 'complement';
  const district = 'district';
  const publicPlace = 'publicPlace';
  const ddd = 'ddd';

  setUp(() {
    when(() => cepEntity.cep).thenReturn(cep);
    when(() => cepEntity.uf).thenReturn(uf);
    when(() => cepEntity.city).thenReturn(city);
    when(() => cepEntity.complement).thenReturn(complement);
    when(() => cepEntity.district).thenReturn(district);
    when(() => cepEntity.publicPlace).thenReturn(publicPlace);
    when(() => cepEntity.ddd).thenReturn(ddd);
  });

  //Common finders
  final alertDialog = find.byWidgetPredicate(
    (widget) => _alertDialogMatcher(widget),
  );
  final column = find.byWidgetPredicate((widget) => _columnMatcher(widget));

  final title = find.byWidgetPredicate(
    (widget) => _titleMatcher(widget, 'cep'),
  );

  testWidgets(
    "Should find all the widgets and guarantee that they are visible",
    (WidgetTester tester) async {
      final key = GlobalKey<ScaffoldState>();
      await tester.pumpWidget(
        MaterialApp(
          theme: CustomTheme.themeData(),
          home: Scaffold(
            key: key,
            body: ElevatedButton(
              onPressed: () => showCepInfoDialog(
                context: key.currentContext!,
                cep: cepEntity,
              ),
              child: const Text('button'),
            ),
          ),
        ),
      );
      //open the dialog
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(alertDialog, findsOneWidget);
      expect(title, findsOneWidget);
      expect(column, findsOneWidget);
      expect(find.text(cep).hitTestable(), findsOneWidget);
      expect(find.text(uf).hitTestable(), findsOneWidget);
      expect(find.text(city).hitTestable(), findsOneWidget);
      expect(find.text(complement).hitTestable(), findsOneWidget);
      expect(find.text(publicPlace).hitTestable(), findsOneWidget);
      expect(find.text(district).hitTestable(), findsOneWidget);
      expect(find.text(ddd).hitTestable(), findsOneWidget);
    },
  );
}
