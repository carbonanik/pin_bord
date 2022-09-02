import '../entities/note.dart';

abstract class NoteRepository {
  // Future<List<Note>> getNotes();

  Future<Note> getNote(int id);

  Future<bool> updateNote(Note note);

  Future<int> insertNote(Note note);

  Future<int> delete(int id);
}
