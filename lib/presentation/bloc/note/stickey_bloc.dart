import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_bord/domain/entities/stickey.dart';
import 'package:pin_bord/domain/repositories/stickey_repository.dart';

part 'stickey_event.dart';
part 'stickye_state.dart';

class StickeyBloc extends Bloc<StickeyEvent, StickeyState> {
  final StickeyRepository noteRepository;
  StickeyBloc({required this.noteRepository}) : super(StickeyInitial()) {
    //
    //
    on<AddStickeyEvent>((event, emit) async {
      print("stickey add event");
      await noteRepository.addStickey(event.stickey);
      add(GetStickiesEvent());
    });
    //
    //
    on<GetStickeyEvent>((event, emit) async {
      final Stickey stickey = await noteRepository.getStickey(event.id);
      emit(StickiesLoaded(note: stickey));
    });
    //
    //
    on<GetStickiesEvent>((event, emit) async {
      // final List<Note> notes = await noteRepository.getNotes();
      // emit(NotesLoaded(notes: notes));
    });
    //
    //
    on<UpdateStickeyEvent>((event, emit) async {
      final updated = await noteRepository.updateNote(event.stickey);
      if (updated) {
        add(GetStickiesEvent());
      }
    });
    //
    //
    on<DeleteStickeyEvent>((event, emit) async {
      final deleted = await noteRepository.delete(event.id);
      if (deleted > 0) {
        add(GetStickiesEvent());
      }
    });
  }
}
