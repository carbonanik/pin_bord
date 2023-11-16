import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedColorProvider = StateProvider<Color>((ref) => _selectableColor.last);

final colorsProvider = Provider<List<Color>>((ref) => _selectableColor);

final _selectableColor = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
];
