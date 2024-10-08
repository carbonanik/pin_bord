import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:pin_bord/provider/note_color_provider.dart';
import 'package:pin_bord/util/json_converters.dart';

part 'sticky.freezed.dart';

part 'sticky.g.dart';

@freezed
abstract class Sticky extends HiveObject with _$Sticky {
  Sticky._();

  @HiveType(typeId: 0, adapterName: 'StickyAdapter')
  factory Sticky({
    @HiveField(0) required final String id,
    @HiveField(1) required final String title,
    @HiveField(2) required final String content,
    @HiveField(3) required final DateTime? createdAt,
    @HiveField(4) required final DateTime? updatedAt,
    @HiveField(5) required final int zIndex,
    @HiveField(6) @ColorJsonConverter() final Color? color,
    @HiveField(7) @OffsetJsonConverter() required final Offset position,
    @HiveField(8) @SizeJsonConverter() final Size? size,
    @HiveField(9) required final StickyType type,
  }) = _Sticky;

  factory Sticky.fromJson(Map<String, dynamic> json) => _$StickyFromJson(json);

  factory Sticky.empty() {
    return Sticky(
      id: "",
      title: '',
      content: '',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      zIndex: 0,
      color: unselectedColor,
      position: const Offset(250, 250),
      size: const Size(300, 300),
      type: StickyType.note,
    );
  }

  // Sticky update(UpdateSticky update) {
  //   final updated = copyWith(
  //     title: update.title,
  //     content: update.content,
  //     color: update.color,
  //   );
  //   return updated;
  // }
}

@HiveType(typeId: 1, adapterName: 'StickyTypeAdapter')
enum StickyType{
  @HiveField(0)
  note,
  @HiveField(1)
  sticker,
}

// @freezed
// class CreateSticky with _$CreateSticky {
//   const factory CreateSticky({
//     required String title,
//     required String content,
//     @ColorJsonConverter() Color? color,
//     StickyType? type,
//   }) = _CreateSticky;
//
//   factory CreateSticky.fromJson(Map<String, dynamic> json) => _$CreateStickyFromJson(json);
// }
//
// @freezed
// class UpdateSticky with _$UpdateSticky {
//   const factory UpdateSticky({
//     required String title,
//     required String content,
//     @ColorJsonConverter() Color? color,
//   }) = _UpdateSticky;
//
//   factory UpdateSticky.fromJson(Map<String, dynamic> json) => _$UpdateStickyFromJson(json);
// }
