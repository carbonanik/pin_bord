import 'package:hive_flutter/hive_flutter.dart';
import 'package:pin_bord/data/datasource/local/constant.dart';
import 'package:pin_bord/data/datasource/local/sticky_local.dart';
import 'package:pin_bord/models/sticky/sticky.dart';

class StickyLocalLoadTestImpl implements StickyLocal {
  @override
  List<Sticky> getStickies() {
    final box = Hive.box<Sticky>(stickyLoadTestBox);
    return box.values.toList();
  }

  @override
  Sticky? getSticky(String id) {
    final box = Hive.box<Sticky>(stickyLoadTestBox);
    return box.get(id);
  }

  @override
  Future<void> addSticky(Sticky sticky) async {
    final box = Hive.box<Sticky>(stickyLoadTestBox);
    await box.put(sticky.id, sticky);
  }

  @override
  Future<void> addStickyMany(Iterable<Sticky> stickies) async {
    final box = Hive.box<Sticky>(stickyLoadTestBox);
    await box.putAll({for (var sticky in stickies) sticky.id: sticky});
  }

  @override
  Future<void> removeSticky(String id) async {
    final box = Hive.box<Sticky>(stickyLoadTestBox);
    await box.delete(id);
  }
}
