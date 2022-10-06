part of 'error_snackbar_test.dart';

_errorSnackbarMatcher(Widget widget) {
  return widget is SnackBar &&
      widget.backgroundColor == const Color.fromARGB(255, 212, 0, 0) &&
      widget.content is Row;
}

_contentMatcher(Widget widget) {
  return widget is Row &&
      widget.mainAxisAlignment == MainAxisAlignment.spaceBetween &&
      widget.children[0] is Flexible &&
      widget.children[1] is TextButton;
}

_textMatcher(Widget widget) {
  return widget is Text && widget.data == 'Ops! Ocorreu um erro inesperado';
}

_buttonMatcher(Widget widget) {
  return widget is TextButton &&
      widget.child is Text &&
      (widget.child as Text).data == 'Ok';
}
