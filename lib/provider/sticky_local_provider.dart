import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/data/datasource/local/impl/sticky_local_impl.dart';
import 'package:pin_bord/data/datasource/local/sticky_local.dart';

final stickyLocalProvider = Provider<StickyLocal>((ref) {
  return StickyLocalImpl();
});