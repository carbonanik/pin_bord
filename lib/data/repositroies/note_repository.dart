import 'package:pin_bord/core/query_data.dart';
import 'package:pin_bord/data/datasource/graphql_service.dart';
import 'package:pin_bord/domain/entities/stickey.dart';

import '../../domain/repositories/stickey_repository.dart';

import '../models/note_converter.dart';

class StickeyRepositoryImpl implements StickeyRepository {
  // final GraphQLService graphQLService;
  StickeyRepositoryImpl(
      // {
      // required this.graphQLService
      // }
      );

  @override
  Future<int> addStickey(Stickey stickey) async {
    // var a = await graphQLService.preformMutation(mutationAddStickey(stickey));
    return 0;
  }

  @override
  Future<int> delete(int id) async {
    // // TODO: implement delete
    // throw UnimplementedError();
    return 0;
  }

  @override
  Future<Stickey> getStickey(int id) {
    // TODO: implement getStickey
    throw UnimplementedError();
  }

  @override
  Future<List<Stickey>> getStickies() async {
    // var list = await graphQLService.performQuery(queryGetAllStickies());
    // print(list);
    return [];
  }

  @override
  Future<bool> updateNote(Stickey stickey) async {
    // // TODO: implement updateNote
    // throw UnimplementedError();
    return true;
  }
}
