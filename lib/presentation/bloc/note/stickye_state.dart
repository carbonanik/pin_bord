// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'stickey_bloc.dart';

@immutable
abstract class StickeyState extends Equatable {
  final List<dynamic> properties;
  const StickeyState({
    this.properties = const [],
  });

  @override
  List get props => [];
}

// initial state for note list
// class NotesInitial extends NoteState {}

// note list loaded
class StickeyLoaded extends StickeyState {
  final List<Stickey> notes;
  const StickeyLoaded({
    required this.notes,
  }) : super(properties: notes);
}

// initial state for single note
class StickeyInitial extends StickeyState {}

// single note loaded
class StickiesLoaded extends StickeyState {
  final Stickey note;
  const StickiesLoaded({
    required this.note,
  });
}
