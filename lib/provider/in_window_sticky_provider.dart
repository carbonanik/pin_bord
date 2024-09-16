import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/provider/pan_position_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';
import 'package:pin_bord/provider/zoom_provider.dart';

final inWindowStickyProvider = StateProvider.family<List<Sticky>, Size>(
  (ref, windowSize) {
    final notifier = ref.watch(stickyProvider);
    final panPosition = ref.watch(panPositionProvider);
    final zoom = ref.watch(zoomProvider);
    Offset cacheExtend = const Offset(-300, -300);

    //
    return notifier.notes.where(
      (element) {
        final elementOffset = (element.position * zoom) + panPosition;
        return Rect.fromPoints(
          cacheExtend,
          Offset(windowSize.width, windowSize.height),
        ).contains(elementOffset);
      },
    ).toList()
      ..sort((a, b) => a.zIndex.compareTo(b.zIndex));
  },
);
