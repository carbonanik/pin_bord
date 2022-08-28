import 'package:flutter/cupertino.dart';

import '../../domain/entities/note.dart';
import 'note_card.dart';

class NoteDraggable extends StatefulWidget {
  final Note note;
  final VoidCallback? onTap;
  final Function(Offset, int)? updatePosition;

  NoteDraggable({Key? key, required this.note, this.onTap, this.updatePosition})
      : super(key: key);

  @override
  State<NoteDraggable> createState() => _NoteDraggableState();
}

class _NoteDraggableState extends State<NoteDraggable> {
  late double _x = 0;
  late double _y = 0;

  @override
  Widget build(BuildContext context) {
    _x = widget.note.position?.dx ?? 0;
    _y = widget.note.position?.dy ?? 0;
    return Positioned(
      left: _x,
      top: _y,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Draggable(
          childWhenDragging: Container(),
          feedback: NoteCard(
            note: widget.note,
          ),
          onDragStarted: () {},
          onDragEnd: (dragDetails) {
            widget.updatePosition?.call(dragDetails.offset, widget.note.id);
            setState(() {
              _x = dragDetails.offset.dx;
              _y = dragDetails.offset.dy;
            });
          },
          child: NoteCard(
            note: widget.note,
          ),
        ),
      ),
    );
  }
}
