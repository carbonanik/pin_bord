import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class OffsetJsonConverter extends JsonConverter<Offset, Map<String, dynamic>> {
  const OffsetJsonConverter();

  @override
  Offset fromJson(json) {
    return Offset(json['x'] ?? 0, json['y'] ?? 0);
  }

  @override
  Map<String, dynamic> toJson(object) {
    return {
      'x': object.dx,
      'y': object.dy,
    };
  }
}

class ColorJsonConverter extends JsonConverter<Color, Map<String, dynamic>> {
  const ColorJsonConverter();

  @override
  Color fromJson(json) {
    return Color(json['value'] ?? 0);
  }

  @override
  Map<String, dynamic> toJson(object) {
    return {
      'value': object.value,
    };
  }
}

class SizeJsonConverter extends JsonConverter<Size, Map<String, dynamic>> {
  const SizeJsonConverter();

  @override
  Size fromJson(json) {
    return Size(json['width'] ?? 0, json['height'] ?? 0);
  }

  @override
  Map<String, dynamic> toJson(object) {
    return {
      'width': object.width,
      'height': object.height,
    };
  }

}
