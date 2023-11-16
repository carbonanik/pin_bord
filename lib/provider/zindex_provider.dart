import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/data/datasource/local/impl/zindex_counter_impl.dart';
import 'package:pin_bord/data/datasource/local/zindex_counter.dart';

final zIndexCounterProvider = Provider<ZIndexCounter>((ref) => ZIndexCounterImpl());
//
// final getZIndex = FutureProvider((ref) => ref.read(zIndexCounterProvider).getZIndex());
//
// final incrementZIndex = FutureProvider((ref) => ref.read(zIndexCounterProvider).incrementZIndex());