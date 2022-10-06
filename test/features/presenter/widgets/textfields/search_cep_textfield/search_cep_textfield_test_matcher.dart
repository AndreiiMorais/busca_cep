part of 'search_cep_textfield_test.dart';

_textFieldMatcher(Widget widget, String error) {
  if (widget is TextField) {
    final decoration = widget.decoration as InputDecoration;
    return widget.maxLength == 8.0 &&
        widget.inputFormatters![0] == FilteringTextInputFormatter.digitsOnly &&
        widget.inputFormatters?.length == 1 &&
        widget.keyboardType == TextInputType.number &&
        widget.textInputAction == TextInputAction.search &&
        decoration.errorText == error;
  }
  return false;
}
