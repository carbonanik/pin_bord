import 'package:hive_flutter/hive_flutter.dart';
import 'package:pin_bord/data/datasource/local/constant.dart';
import 'package:pin_bord/data/datasource/local/sticky_local.dart';
import 'package:pin_bord/models/sticky/sticky.dart';

class StickyLocalImpl implements StickyLocal {

  @override
  Future<List<Sticky>> getStickies() async {
    final box = Hive.box<Sticky>(stickyBox);
    return box.values.toList();
  }

  @override
  Future<Sticky?> getSticky(String id) async {
    final box = Hive.box<Sticky>(stickyBox);
    return box.get(id);
  }

  @override
  Future<void> addSticky(String id, Sticky sticky) async {
    final box = Hive.box<Sticky>(stickyBox);
    await box.put(sticky.id, sticky);
  }

  @override
  Future<void> addStickyMany(Iterable<Sticky> stickies) async {
    final box = Hive.box<Sticky>(stickyBox);
    await box.putAll({for (var sticky in stickies) sticky.id: sticky});
  }

  @override
  Future<void> removeSticky(String id) async {
    final box = Hive.box<Sticky>(stickyBox);
    await box.delete(id);
  }

  @override
  Future<void> updateSticky(String id, Sticky sticky) async {
    final box = Hive.box<Sticky>(stickyBox);
    await box.put(id, sticky);
  }

}