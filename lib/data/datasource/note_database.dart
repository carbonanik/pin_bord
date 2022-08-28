import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift/web.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../models/notes_data_model.dart';

part 'note_database.g.dart';

// ignore: unused_element
// LazyDatabase _openConnection() {
//   return LazyDatabase(() async {
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(path.join(dbFolder.path, 'note.sqlite'));
//     return NativeDatabase(file);
//   });
// }

@DriftDatabase(tables: [Notes])
class NoteDatabase extends _$NoteDatabase {
  NoteDatabase() : super(WebDatabase('note_database'));

  @override
  int get schemaVersion => 1;

  Future<List<NoteData>> getNotes() async {
    return await select(notes).get();
  }

  Future<NoteData> getNote(int id) async {
    return await (select(notes)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<bool> updateNote(NotesCompanion note) async {
    return await update(notes).replace(note);
  }

  Future<int> insertNote(NotesCompanion note) async {
    return await into(notes).insert(note);
  }

  Future<int> deleteNote(int id) async {
    return await (delete(notes)..where((tbl) => tbl.id.equals(id))).go();
  }
}
