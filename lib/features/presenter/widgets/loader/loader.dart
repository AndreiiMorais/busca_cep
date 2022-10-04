import 'package:flutter/material.dart';

typedef CloseLoadingScreen = bool Function();

@immutable
class _LoaderController {
  final CloseLoadingScreen close;

  /// Controller that defines the overlay state
  /// Requires a [CloseLoadingScreen] which is a
  /// close `Function()`
  const _LoaderController(this.close);
}

class Loader {
  // Make it singleton
  static final Loader instance = Loader._();
  Loader._();
  factory Loader() => instance;
  //

  _LoaderController? _controller;

  void show(BuildContext context) => _controller = _showOverlay(context);

  void hide() {
    _controller?.close();
    _controller = null;
  }

  _LoaderController _showOverlay(BuildContext context) {
    final overlay = OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.black.withAlpha(150),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 32,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    Overlay.of(context)?.insert(overlay);
    return _LoaderController(() {
      overlay.remove();
      return true;
    });
  }
}

extension Loading on BuildContext {
  /// This will display an overlay that blocks gestures
  /// while inform the user that is something loading.
  void showLoader() => Loader.instance.show(this);

  /// This will hide the loader insted
  ///
  void hideLoader() => Loader.instance.hide();
}
