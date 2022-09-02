import 'package:pin_bord/domain/entities/note.dart';

import '../../domain/repositories/note_repository.dart';
import '../datasource/note_database.dart';

import '../models/note_converter.dart';

// class NoteRepositoryImpl implements NoteRepository {
//   final NoteDatabase noteDatabase;

//   NoteRepositoryImpl({
//     required this.noteDatabase,
//   });

  // @override
  // Future<List<Note>> getNotes() async {
  //   return (await noteDatabase.getNotes()).map((e) => e.toNote()).toList();
  // }

//   @override
//   Future<Note> getNote(int id) async {
//     return (await noteDatabase.getNote(id)).toNote();
//   }

//   @override
//   Future<bool> updateNote(Note note) async {
//     return await noteDatabase.updateNote(note.toNoteData().toCompanion(false));
//   }

//   @override
//   Future<int> insertNote(Note note) async {
//     return await noteDatabase.insertNote(note.toNoteData().toCompanion(false));
//   }

//   @override
//   Future<int> delete(int id) async {
//     return await noteDatabase.deleteNote(id);
//   }
// }
