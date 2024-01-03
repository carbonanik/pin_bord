import 'package:hive_flutter/hive_flutter.dart';
import 'package:pin_bord/data/datasource/local/constant.dart';
import 'package:pin_bord/data/datasource/local/zindex_counter.dart';

class ZIndexCounterLoadTestImpl extends ZIndexCounter {
  final idCount = "idCount";

  @override
  int getZIndex()  {
    final box = Hive.box<int>(zIndexCounterLoadTestBox);
    return box.get(idCount) ?? 0;
  }

  @override
  Future<void> updateZIndex(int zIndex) async {
    final box = Hive.box<int>(zIndexCounterLoadTestBox);
    await box.put(idCount, zIndex);
  }
}
