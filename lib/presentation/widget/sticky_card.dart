import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/presentation/widget/sticky_note.dart';
import 'package:pin_bord/presentation/widget/sticky_sticker.dart';

class StickyCard extends ConsumerWidget {
  final Sticky sticky;
  final double zoom;

  const StickyCard({
    Key? key,
    required this.sticky,
    this.zoom = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stickyWidget = sticky.type == StickyType.note
        ? StickyNote(sticky: sticky)
        : StickySticker(sticky: sticky);

    final defaultWidth = StickyType.note == sticky.type ? 300 : 160;
    final width = (sticky.size?.width ?? defaultWidth) * zoom;

    return SizedBox(
      width: width,
      child: FittedBox(
        child: stickyWidget,
      ),
    );
  }
}
