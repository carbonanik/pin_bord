import '../entities/stickey.dart';

abstract class StickeyRepository {
  Future<int> addStickey(Stickey stickey);

  Future<Stickey> getStickey(int id);

  Future<bool> updateNote(Stickey stickey);

  Future<int> delete(int id);

  Future<List<Stickey>> getStickies();
}
