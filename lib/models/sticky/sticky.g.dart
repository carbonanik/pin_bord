// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticky.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StickyImpl _$$StickyImplFromJson(Map<String, dynamic> json) => _$StickyImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      color: _$JsonConverterFromJson<Map<String, dynamic>, Color>(
          json['color'], const ColorJsonConverter().fromJson),
      position: _$JsonConverterFromJson<Map<String, dynamic>, Offset>(
          json['position'], const OffsetJsonConverter().fromJson),
      size: _$JsonConverterFromJson<Map<String, dynamic>, Size>(
          json['size'], const SizeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$StickyImplToJson(_$StickyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'color': _$JsonConverterToJson<Map<String, dynamic>, Color>(
          instance.color, const ColorJsonConverter().toJson),
      'position': _$JsonConverterToJson<Map<String, dynamic>, Offset>(
          instance.position, const OffsetJsonConverter().toJson),
      'size': _$JsonConverterToJson<Map<String, dynamic>, Size>(
          instance.size, const SizeJsonConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
