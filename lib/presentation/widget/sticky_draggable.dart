import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/provider/pan_position_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';
import 'sticky_card.dart';

class StickyDraggable extends StatefulWidget {
  final Sticky sticky;

  const StickyDraggable({
    Key? key,
    required this.sticky,
  }) : super(key: key);

  @override
  State<StickyDraggable> createState() => _StickyDraggableState();
}

class _StickyDraggableState extends State<StickyDraggable> {
  late double _x = 0;
  late double _y = 0;
  bool isDragging = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _x = widget.sticky.position?.dx ?? size.width / 2 - 150;
    _y = widget.sticky.position?.dy ?? size.height / 10;
    return Consumer(builder: (context, ref, child) {
      final panPosition = ref.watch(panPositionProvider);
      final notifier = ref.watch(stickyProvider);

      return Positioned(
        left: _x + panPosition.dx,
        top: _y + panPosition.dy,
        child: GestureDetector(
          onTap: () async => await notifier.itemToTop(widget.sticky.id),
          child: Draggable(
            feedback: Material(
              color: Colors.transparent,
              child: StickyCard(
                sticky: widget.sticky,
              ),
            ),
            onDragStarted: () => setState(() => isDragging = true),
            onDragEnd: (dragDetails) async {
              final pane = ref.read(panPositionProvider);
              await notifier.updatePosition(dragDetails.offset - pane, widget.sticky.id);
              setState(() => isDragging = false);
            },
            child: Opacity(
              opacity: isDragging ? 0 : 1,
              child: StickyCard(
                sticky: widget.sticky,
              ),
            ),
          ),
        ),
      );
    });
  }
}
