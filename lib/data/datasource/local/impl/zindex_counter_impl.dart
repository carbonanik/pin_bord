import 'package:hive_flutter/hive_flutter.dart';
import 'package:pin_bord/data/datasource/local/constant.dart';
import 'package:pin_bord/data/datasource/local/zindex_counter.dart';

class ZIndexCounterImpl extends ZIndexCounter {
  final idCount = "idCount";

  @override
  Future<int> getZIndex() async {
    final box = Hive.box<int>(zIndexCounterBox);
    return box.get(idCount) ?? 0;
  }

  @override
  Future<void> updateZIndex(int zIndex) async {
    final box = Hive.box<int>(zIndexCounterBox);
    await box.put(idCount, zIndex);
  }

  @override
  Future<void> incrementZIndex() async {
    final box = Hive.box<int>(zIndexCounterBox);
    await box.put(idCount, await getZIndex() + 1);
  }
}
