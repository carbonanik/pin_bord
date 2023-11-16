import 'package:hive_flutter/hive_flutter.dart';
import 'package:pin_bord/data/datasource/local/constant.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/util/hive_type_adapter.dart';

Future<void> initHiveDriver() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ColorAdapter());
  Hive.registerAdapter(OffsetAdapter());
  Hive.registerAdapter(SizeAdapter());
  Hive.registerAdapter(StickyAdapter());
  await Hive.openBox<Sticky>(stickyBox);
  await Hive.openBox<int>(zIndexCounterBox);
}