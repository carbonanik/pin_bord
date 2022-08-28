import 'package:get_it/get_it.dart';
import 'package:pin_bord/data/datasource/note_database.dart';
import 'package:pin_bord/data/repositroies/note_repository.dart';
import 'package:pin_bord/domain/repositories/note_repository.dart';
import 'package:pin_bord/presentation/bloc/note/note_bloc.dart';

final inj = GetIt.instance;

void init() async {
  // Block
  inj.registerLazySingleton(() => NoteBloc(noteRepository: inj()));

  // Repository
  inj.registerLazySingleton<NoteRepository>(
      () => NoteRepositoryImpl(noteDatabase: inj()));

  // Data Source
  inj.registerLazySingleton(() => NoteDatabase());
}
