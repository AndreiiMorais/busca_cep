part of 'search_cep_homepage_test.dart';

_paddingMatcher({required Widget widget, required EdgeInsets padding}) {
  if (widget is Padding) {
    return widget.padding == padding;
  }
  return false;
}

_columnMatcher(Widget widget) {
  return widget is Column &&
      widget.mainAxisAlignment == MainAxisAlignment.center;
}

_rowMatcher(Widget widget) {
  return widget is Row &&
      widget.mainAxisAlignment == MainAxisAlignment.spaceEvenly &&
      widget.children.length == 2;
}

_searchButton(Widget widget) {
  if (widget is Tooltip && widget.child is ElevatedButton) {
    final child = widget.child as ElevatedButton;
    return widget.message == 'Buscar cep' &&
        child.child is Icon &&
        (child.child as Icon).icon == Icons.search;
  }
  return false;
}

_savedsButton(Widget widget) {
  if (widget is Tooltip && widget.child is ElevatedButton) {
    final child = widget.child as ElevatedButton;
    return widget.message == 'Ver Salvos' &&
        child.child is Icon &&
        (child.child as Icon).icon == Icons.save;
  }
  return false;
}
