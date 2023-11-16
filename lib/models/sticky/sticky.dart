import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pin_bord/util/json_converters.dart';

part 'sticky.freezed.dart';

part 'sticky.g.dart';

@freezed
class Sticky with _$Sticky {
  const factory Sticky({
    required int id,
    required String title,
    required String content,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    @ColorJsonConverter() Color? color,
    @OffsetJsonConverter() Offset? position,
    @SizeJsonConverter() Size? size,
  }) = _Sticky;

  factory Sticky.fromJson(Map<String, dynamic> json) => _$StickyFromJson(json);
}
