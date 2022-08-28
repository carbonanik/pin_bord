// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'note_bloc.dart';

@immutable
abstract class NoteState extends Equatable {
  final List<dynamic> properties;
  const NoteState({
    this.properties = const [],
  });

  @override
  List get props => [];
}

// initial state for note list
// class NotesInitial extends NoteState {}

// note list loaded
class NotesLoaded extends NoteState {
  final List<Note> notes;
  const NotesLoaded({
    required this.notes,
  }) : super(properties: notes);
}

// initial state for single note
class NoteInitial extends NoteState {}

// single note loaded
class NoteLoaded extends NoteState {
  final Note note;
  const NoteLoaded({
    required this.note,
  });
}
