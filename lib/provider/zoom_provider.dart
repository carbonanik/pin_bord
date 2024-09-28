import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'zoom_provider.g.dart';

@Riverpod(keepAlive: true)
class Zoom extends _$Zoom {
  @override
  double build() {
    return 1;
  }

  void zoomIn() {
    state = _validateZoom(state + 0.1);
  }

  void zoomOut() {
    state = _validateZoom(state - 0.1);
  }

  void reset() {
    state = 1;
  }

  double _validateZoom(double zoom) {
    if (zoom < .5) return .5;
    if (zoom > 2) return 2;
    return zoom;
  }
}
