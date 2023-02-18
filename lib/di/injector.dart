import 'package:get_it/get_it.dart';
import 'package:pin_bord/data/datasource/graphql_service.dart';
import 'package:pin_bord/data/repositroies/note_repository.dart';
import 'package:pin_bord/domain/repositories/stickey_repository.dart';
import 'package:pin_bord/presentation/bloc/note/stickey_bloc.dart';

import '../data/datasource/graph_api_client.dart';

final inj = GetIt.instance;

void init() async {
  // Block
  inj.registerLazySingleton(() => StickeyBloc(noteRepository: inj()));

  // Repository
  inj.registerLazySingleton<StickeyRepository>(() => StickeyRepositoryImpl());

  // Data Source
  // inj.registerLazySingleton(() => NoteDatabase());
  // inj.registerLazySingleton(() => GraphQLService());
  inj.registerLazySingleton(() => GraphQLService());
}
