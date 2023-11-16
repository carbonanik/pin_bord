// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/sticky.dart';
import '../widget/sticky_draggable.dart';

final List<Sticky> _notes = [
  Sticky(
    id: 1,
    title: 'Note 1',
    content: 'Note 1 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.red,
    position: const Offset(10, 10),
  ),
  Sticky(
    id: 2,
    title: 'Note 2',
    content: 'Note 2 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.green,
    position: const Offset(50, 50),
  ),
  Sticky(
    id: 3,
    title: 'Note 3',
    content: 'Note 3 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.blue,
    position: const Offset(100, 100),
  ),
  Sticky(
    id: 4,
    title: 'Note 4',
    content: 'Note 4 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.yellow,
    position: const Offset(150, 150),
  ),
];

class StickyStackPage extends StatefulWidget {
  const StickyStackPage({Key? key}) : super(key: key);

  @override
  State<StickyStackPage> createState() => _StickyStackPageState();
}

class _StickyStackPageState extends State<StickyStackPage> {
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
          context.go('/details');
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
          // var st = Stickey(
          //   id: -1,
          //   title: 'Note ${_notes.length + 1}',
          //   content: 'Note ${_notes.length + 1} Content',
          //   createdAt: DateTime.now(),
          //   updatedAt: DateTime.now(),
          //   color: Colors.red,
          //   position: const Offset(100, 100),
          // );
          // print(st);
        },
        child: const Icon(Icons.note_add),
      ),
      // 🤔🤔🤔🤔
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        children: //[Container(child: Text(result.toString()))],
            _notes
                .map(
                  (e) => StickyDraggable(
                    sticky: e,
                    onTap: () {
                      itemToTop(_notes.indexOf(e));
                    },
                    updatePosition: (Offset offset, int id) {
                      setState(
                        () {
                          _notes.removeWhere((note) => note.id == id);
                          _notes.insert(
                            _notes.length,
                            Sticky(
                              id: id,
                              title: e.title,
                              content: e.content,
                              createdAt: DateTime.now(),
                              updatedAt: DateTime.now(),
                              color: e.color,
                              position: offset,
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
                .toList(),
      ),
    );
  }
}
