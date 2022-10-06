part of 'cep_info_dialog_test.dart';

_alertDialogMatcher(Widget widget) {
  return widget is AlertDialog &&
      widget.title is Center &&
      widget.content is Column &&
      widget.actionsAlignment == MainAxisAlignment.spaceEvenly;
}

_columnMatcher(Widget widget) {
  return widget is Column &&
      widget.mainAxisSize == MainAxisSize.min &&
      widget.children.length == 6;
}

_titleMatcher(Widget widget, String cep) {
  return widget is Center &&
      widget.child is Text &&
      (widget.child as Text).data == cep;
}
