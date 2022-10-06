part of 'save_success_snackbar_test.dart';

_successSnackbarMatcher(Widget widget) {
  return widget is SnackBar &&
      widget.backgroundColor == CustomTheme.themeData().colorScheme.tertiary &&
      widget.content is Row;
}

_contentMatcher(Widget widget) {
  return widget is Row &&
      widget.mainAxisAlignment == MainAxisAlignment.spaceBetween &&
      widget.children[0] is Flexible &&
      widget.children[1] is TextButton;
}

_textMatcher(Widget widget) {
  return widget is Text && widget.data == 'Cep salvo com sucesso!';
}

_buttonMatcher(Widget widget) {
  return widget is TextButton &&
      widget.child is Text &&
      (widget.child as Text).data == 'Ok';
}
