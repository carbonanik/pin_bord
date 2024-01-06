import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final screenSizeProvider = Provider<Size>((ref) {
  return window.physicalSize;
});
