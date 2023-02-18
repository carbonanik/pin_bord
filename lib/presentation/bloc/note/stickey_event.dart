// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'stickey_bloc.dart';

@immutable
abstract class StickeyEvent extends Equatable {
  final List properties;
  const StickeyEvent({this.properties = const []});

  @override
  List<dynamic> get props => properties;
}

class AddStickeyEvent extends StickeyEvent {
  final Stickey stickey;
  AddStickeyEvent({
    required this.stickey,
  }) : super(properties: [stickey]);
}

// get single note by id
class GetStickeyEvent extends StickeyEvent {
  final int id;
  GetStickeyEvent({
    required this.id,
  }) : super(properties: [id]);
}

// get all notes
class GetStickiesEvent extends StickeyEvent {}

// update single note
class UpdateStickeyEvent extends StickeyEvent {
  final Stickey stickey;
  UpdateStickeyEvent({
    required this.stickey,
  }) : super(properties: [stickey]);
}

// delete single note by id
class DeleteStickeyEvent extends StickeyEvent {
  final int id;
  DeleteStickeyEvent({
    required this.id,
  }) : super(properties: [id]);
}
