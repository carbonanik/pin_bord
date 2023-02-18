// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pin_bord/core/query_data.dart';
import 'package:pin_bord/di/injector.dart';
import 'package:pin_bord/routes/app_router.dart';

import '../../domain/entities/stickey.dart';
import '../bloc/note/stickey_bloc.dart';
import '../widget/stickey_draggable.dart';

final List<Stickey> _notes = [
  Stickey(
    id: 1,
    title: 'Note 1',
    content: 'Note 1 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.red,
    position: const Offset(10, 10),
  ),
  Stickey(
    id: 2,
    title: 'Note 2',
    content: 'Note 2 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.green,
    position: const Offset(50, 50),
  ),
  Stickey(
    id: 3,
    title: 'Note 3',
    content: 'Note 3 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.blue,
    position: const Offset(100, 100),
  ),
  Stickey(
    id: 4,
    title: 'Note 4',
    content: 'Note 4 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: Colors.yellow,
    position: const Offset(150, 150),
  ),
];

class StickeyStackPage extends StatefulWidget {
  const StickeyStackPage({Key? key}) : super(key: key);

  @override
  State<StickeyStackPage> createState() => _StickeyStackPageState();
}

class _StickeyStackPageState extends State<StickeyStackPage> {
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
        body: Query(
            options: QueryOptions(
              document: gql(
                  queryGetAllStickies()), // this is the query string you just created
              fetchPolicy: FetchPolicy.cacheAndNetwork,
              pollInterval: const Duration(seconds: 10),
            ),
            builder: (QueryResult result,
                {VoidCallback? refetch, FetchMore? fetchMore}) {
              return Stack(
                  children: //[Container(child: Text(result.toString()))],
                      _notes
                          .map(
                            (e) => StickeyDraggable(
                              stickey: e,
                              onTap: () {
                                itemToTop(_notes.indexOf(e));
                              },
                              updatePosition: (Offset offset, int id) {
                                setState(() {
                                  _notes.removeWhere((note) => note.id == id);
                                  _notes.insert(
                                      _notes.length,
                                      Stickey(
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
                          .toList());
            }));
  }
}
