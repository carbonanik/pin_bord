import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedColorProvider = StateProvider<Color>((ref) => _selectableColor.last);

final colorsProvider = Provider<List<Color>>((ref) => _selectableColor);

final _selectableColor = [
  const Color(0xfff1f58f),
  const Color(0xffffa930),
  const Color(0xffff32b2),
  const Color(0xffa9edf1),
  const Color(0xff74ed4b),
];


final unselectedColor = _selectableColor.first;
