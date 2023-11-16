import 'package:hive_flutter/hive_flutter.dart';

Future<void> initHiveDriver() async {
  await Hive.initFlutter();
  await Hive.openBox('cart_item');
}