import 'dart:ui';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:pin_bord/data/datasource/local/constant.dart';
import 'package:pin_bord/data/datasource/local/sticky_local.dart';
import 'package:pin_bord/models/sticky/sticky.dart';

class StickyLocalLoadTestImpl implements StickyLocal {
  @override
  Future<List<Sticky>> getStickies() async {

    const count = 400;
    final lastPos = const Offset(count * -100, count * -100) + Offset(1000, 1000);
    final generated = List.generate(
      count,
          (index) {

        final pos = lastPos - Offset(index * -100, index * -100);
        return Sticky(
          id: index.toString(),
          title: "Sticky: $index",
          content: "This is a note \n $pos",
          zIndex: count - index,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          position: pos,
        );
      },
    );

    final box = Hive.box<Sticky>(stickyLoadTestBox);
    return box.values.toList();
  }

  @override
  Future<Sticky?> getSticky(String id) async {
    final box = Hive.box<Sticky>(stickyLoadTestBox);
    return box.get(id);
  }

  @override
  Future<void> addSticky(String id, Sticky sticky) async {
    final box = Hive.box<Sticky>(stickyLoadTestBox);
    await box.put(sticky.id, sticky);
  }

  @override
  Future<void> removeSticky(String id) async {
    final box = Hive.box<Sticky>(stickyLoadTestBox);
    await box.delete(id);
  }

  @override
  Future<void> updateSticky(String id, Sticky sticky) async {
    final box = Hive.box<Sticky>(stickyLoadTestBox);
    await box.put(id, sticky);
  }
}
