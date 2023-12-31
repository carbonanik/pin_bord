import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/data/datasource/local/impl/sticky_local_impl.dart';
import 'package:pin_bord/data/datasource/local/sticky_local.dart';

import '../data/datasource/local/impl/sticky_local_load_test_impl.dart';
import 'is_test_provider.dart';

final stickyLocalProvider = Provider<StickyLocal>((ref) {
  final isTest = ref.read(isTestProvider);
  if (isTest) {
    return StickyLocalLoadTestImpl();
  }
  return StickyLocalImpl();
});
