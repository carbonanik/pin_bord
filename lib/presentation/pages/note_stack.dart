// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pin_bord/routes/app_router.dart';

import '../../domain/entities/note.dart';
import '../widget/note_draggable.dart';

final List<Note> _notes = [
  Note(
    id: 1,
    title: 'Note 1',
    content: 'Note 1 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.red,
    position: const Offset(10, 10),
  ),
  Note(
    id: 2,
    title: 'Note 2',
    content: 'Note 2 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.green,
    position: const Offset(50, 50),
  ),
  Note(
    id: 3,
    title: 'Note 3',
    content: 'Note 3 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.blue,
    position: const Offset(100, 100),
  ),
  Note(
    id: 4,
    title: 'Note 4',
    content: 'Note 4 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.yellow,
    position: const Offset(150, 150),
  ),
];

class NoteStackPage extends StatefulWidget {
  const NoteStackPage({Key? key}) : super(key: key);

  @override
  State<NoteStackPage> createState() => _NoteStackPageState();
}

class _NoteStackPageState extends State<NoteStackPage> {
  itemToTop(int pos) {
    setState(() {
      _notes.insert(0, _notes.removeAt(pos));
    });
  }

  @override
  Widget build(BuildContext context) {
    // final router = AutoRouter.of(context);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // setState(() {
            //   _notes.add(Note(
            //     id: _notes.length + 1,
            //     title: 'Note ${_notes.length + 1}',
            //     content: 'Note ${_notes.length + 1} Content',
            //     createdAt: DateTime.now(),
            //     updatedAt: DateTime.now(),
            //     color: Colors.red,
            //     position: const Offset(100, 100),
            //   ));
            // });
            // router.push(const CreateNotePageRoute());
          },
          child: const Icon(Icons.note_add),
        ), // 🤔🤔🤔🤔
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Stack(
            children: _notes
                .map(
                  (e) => NoteDraggable(
                    note: e,
                    onTap: () {
                      // itemToTop(widget._notes.indexOf(e));
                    },
                    updatePosition: (Offset offset, int id) {
                      setState(() {
                        _notes.removeWhere((note) => note.id == id);
                        _notes.insert(
                            _notes.length,
                            Note(
                              id: id,
                              title: e.title,
                              content: e.content,
                              createdAt: DateTime.now(),
                              updatedAt: DateTime.now(),
                              color: e.color,
                              position: offset,
                            ));
                      });
                    },
                  ),
                )
                .toList()));
  }
}
