import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:flutter/material.dart';

abstract class WidgetTestMatchers{
  static cardMatcher({
    required Widget widget,
  }) {
    return widget is Card && widget.child is ListTile;
  }

  static cepListTileMatcher({
    required Widget widget,
  }) {
    return widget is ListTile &&
        widget.title is Text &&
        widget.subtitle is Text &&
        widget.trailing is Icon;
  }

  static districtListTileMatcher({
    required Widget widget,
  }) {
    return widget is ListTile &&
        widget.title is Text &&
        widget.trailing is Icon;
  }

  static listTileTextMatcher({
    required Widget widget,
    required String text,
  }) {
    return widget is Text && widget.data == text;
  }

  static listTileIconMatcher({required Widget widget}) {
    return widget is Icon &&
        widget.icon == Icons.pin_drop &&
        widget.color == CustomTheme.themeData().colorScheme.primary;
  }

}