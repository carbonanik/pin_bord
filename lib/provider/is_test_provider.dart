import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/provider/pan_position_provider.dart';
import 'package:pin_bord/provider/sticky_local_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';

class IsTestNotifier extends StateNotifier<bool> {
  Ref ref;

  IsTestNotifier(super.state, this.ref);

  void toggle() {
    ref.invalidate(panPositionProvider);
    ref.invalidate(stickyProvider);
    ref.invalidate(stickyLocalProvider);
    state = !state;
  }
}

final isTestProvider = StateNotifierProvider<IsTestNotifier, bool>((ref) => IsTestNotifier(false, ref));
