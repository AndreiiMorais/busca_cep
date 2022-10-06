part of 'custom_content_row_test.dart';

_paddingMatcher(Widget widget) {
  return widget is Padding &&
      widget.padding == const EdgeInsets.symmetric(vertical: 4) &&
      widget.child is Row;
}

_rowMatcher(Widget widget) {
  return widget is Row &&
      widget.mainAxisAlignment == MainAxisAlignment.spaceBetween &&
      widget.children[0] is Flexible &&
      widget.children[1] is Flexible;
}

_textMatcher({
  required Widget widget,
  required String text,
  TextAlign? textAlign,
}) {
  return widget is Text && widget.data == text && widget.textAlign == textAlign;
}
