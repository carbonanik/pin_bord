import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/data/datasource/local/impl/zindex_counter_impl.dart';
import 'package:pin_bord/data/datasource/local/impl/zindex_provider_load_test.dart';
import 'package:pin_bord/data/datasource/local/zindex_counter.dart';

import 'is_test_provider.dart';

final zIndexCounterProvider = Provider<ZIndexCounter>((ref) {
  final isTest = ref.read(isTestProvider);
  if (isTest) {
    return ZIndexCounterLoadTestImpl();
  }
  return ZIndexCounterImpl();
});