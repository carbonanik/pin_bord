import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final panPositionProvider = StateProvider<Offset>((ref) => Offset.zero);