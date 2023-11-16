import 'package:flutter/material.dart';
import 'package:pin_bord/models/sticky/sticky.dart';

import 'sticky_card.dart';

class StickyDraggable extends StatefulWidget {
  final Sticky sticky;
  final VoidCallback? onTap;
  final Function(Offset offset, String id)? updatePosition;

  const StickyDraggable({
    Key? key,
    required this.sticky,
    this.onTap,
    this.updatePosition,
  }) : super(key: key);

  @override
  State<StickyDraggable> createState() => _StickyDraggableState();
}

class _StickyDraggableState extends State<StickyDraggable> {
  late double _x = 0;
  late double _y = 0;

  @override
  Widget build(BuildContext context) {
    _x = widget.sticky.position?.dx ?? 0;
    _y = widget.sticky.position?.dy ?? 0;
    return Positioned(
      left: _x,
      top: _y,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Draggable(
          childWhenDragging: Container(),
          feedback: Material(
            color: Colors.transparent,
            child: StickyCard(
              sticky: widget.sticky,
            ),
          ),
          onDragStarted: () {},
          onDragEnd: (dragDetails) {
            widget.updatePosition?.call(dragDetails.offset, widget.sticky.id);
            setState(() {
              _x = dragDetails.offset.dx;
              _y = dragDetails.offset.dy;
            });
          },
          child: StickyCard(
            sticky: widget.sticky,
          ),
        ),
      ),
    );
  }
}
