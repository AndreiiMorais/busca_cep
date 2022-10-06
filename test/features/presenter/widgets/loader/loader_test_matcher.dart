part of 'loader_test.dart';

_backgroundMatcher(Widget widget) {
  return widget is Material &&
      widget.color == Colors.black.withAlpha(150) &&
      widget.child is Center;
}

_isCenteredMatcher(Widget widget) {
  return widget is Center &&
      widget.child is Column &&
      (widget.child as Column).mainAxisAlignment == MainAxisAlignment.center;
}

_loaderBackgroundMatcher(Widget widget) {
  return widget is CircleAvatar &&
      widget.backgroundColor == Colors.white &&
      widget.radius == 32.0 &&
      widget.child is CircularProgressIndicator;
}

_loaderColorMatcher(Widget widget) {
  return widget is CircularProgressIndicator &&
      widget.valueColor is AlwaysStoppedAnimation &&
      (widget.valueColor as AlwaysStoppedAnimation).value ==
          CustomTheme.themeData().colorScheme.primary;
}
