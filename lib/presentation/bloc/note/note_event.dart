// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'note_bloc.dart';

@immutable
abstract class NoteEvent extends Equatable {
  final List properties;
  const NoteEvent({this.properties = const []});

  @override
  List<dynamic> get props => properties;
}

class AddNoteEvent extends NoteEvent {
  final Note note;
  AddNoteEvent({
    required this.note,
  }) : super(properties: [note]);
}

// get single note by id
class GetNoteEvent extends NoteEvent {
  final int id;
  GetNoteEvent({
    required this.id,
  }) : super(properties: [id]);
}

// get all notes
class GetNotesEvent extends NoteEvent {}

// update single note
class UpdateNoteEvent extends NoteEvent {
  final Note note;
  UpdateNoteEvent({
    required this.note,
  }) : super(properties: [note]);
}

// delete single note by id
class DeleteNoteEvent extends NoteEvent {
  final int id;
  DeleteNoteEvent({
    required this.id,
  }) : super(properties: [id]);
}
