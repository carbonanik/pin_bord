import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_bord/domain/entities/note.dart';
import 'package:pin_bord/domain/repositories/note_repository.dart';

part 'note_event.dart';
part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final NoteRepository noteRepository;
  NoteBloc({required this.noteRepository}) : super(NoteInitial()) {
    //
    //
    on<AddNoteEvent>((event, emit) async {
      await noteRepository.insertNote(event.note);
      add(GetNotesEvent());
    });
    //
    //
    on<GetNoteEvent>((event, emit) async {
      final Note note = await noteRepository.getNote(event.id);
      emit(NoteLoaded(note: note));
    });
    //
    //
    on<GetNotesEvent>((event, emit) async {
      // final List<Note> notes = await noteRepository.getNotes();
      // emit(NotesLoaded(notes: notes));
    });
    //
    //
    on<UpdateNoteEvent>((event, emit) async {
      final updated = await noteRepository.updateNote(event.note);
      if (updated) {
        add(GetNotesEvent());
      }
    });
    //
    //
    on<DeleteNoteEvent>((event, emit) async {
      final deleted = await noteRepository.delete(event.id);
      if (deleted > 0) {
        add(GetNotesEvent());
      }
    });
  }
}
