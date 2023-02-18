import 'package:flutter/cupertino.dart';

import '../../domain/entities/stickey.dart';
import 'stickey_card.dart';

class StickeyDraggable extends StatefulWidget {
  final Stickey stickey;
  final VoidCallback? onTap;
  final Function(Offset, int)? updatePosition;

  StickeyDraggable(
      {Key? key, required this.stickey, this.onTap, this.updatePosition})
      : super(key: key);

  @override
  State<StickeyDraggable> createState() => _StickeyDraggableState();
}

class _StickeyDraggableState extends State<StickeyDraggable> {
  late double _x = 0;
  late double _y = 0;

  @override
  Widget build(BuildContext context) {
    _x = widget.stickey.position?.dx ?? 0;
    _y = widget.stickey.position?.dy ?? 0;
    return Positioned(
      left: _x,
      top: _y,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Draggable(
          childWhenDragging: Container(),
          feedback: StickeyCard(
            stickey: widget.stickey,
          ),
          onDragStarted: () {},
          onDragEnd: (dragDetails) {
            widget.updatePosition?.call(dragDetails.offset, widget.stickey.id);
            setState(() {
              _x = dragDetails.offset.dx;
              _y = dragDetails.offset.dy;
            });
          },
          child: StickeyCard(
            stickey: widget.stickey,
          ),
        ),
      ),
    );
  }
}
