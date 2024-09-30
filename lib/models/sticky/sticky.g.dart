// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticky.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StickyTypeAdapter extends TypeAdapter<StickyType> {
  @override
  final int typeId = 1;

  @override
  StickyType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return StickyType.note;
      case 1:
        return StickyType.sticker;
      default:
        return StickyType.note;
    }
  }

  @override
  void write(BinaryWriter writer, StickyType obj) {
    switch (obj) {
      case StickyType.note:
        writer.writeByte(0);
        break;
      case StickyType.sticker:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StickyTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StickyAdapter extends TypeAdapter<_$StickyImpl> {
  @override
  final int typeId = 0;

  @override
  _$StickyImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StickyImpl(
      id: fields[0] as String,
      title: fields[1] as String,
      content: fields[2] as String,
      createdAt: fields[3] as DateTime?,
      updatedAt: fields[4] as DateTime?,
      zIndex: fields[5] as int,
      color: fields[6] as Color?,
      position: fields[7] as Offset,
      size: fields[8] as Size?,
      type: fields[9] as StickyType,
    );
  }

  @override
  void write(BinaryWriter writer, _$StickyImpl obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.zIndex)
      ..writeByte(6)
      ..write(obj.color)
      ..writeByte(7)
      ..write(obj.position)
      ..writeByte(8)
      ..write(obj.size)
      ..writeByte(9)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StickyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StickyImpl _$$StickyImplFromJson(Map<String, dynamic> json) => _$StickyImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      zIndex: (json['zIndex'] as num).toInt(),
      color: _$JsonConverterFromJson<Map<String, dynamic>, Color>(
          json['color'], const ColorJsonConverter().fromJson),
      position: const OffsetJsonConverter()
          .fromJson(json['position'] as Map<String, dynamic>),
      size: _$JsonConverterFromJson<Map<String, dynamic>, Size>(
          json['size'], const SizeJsonConverter().fromJson),
      type: $enumDecode(_$StickyTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$StickyImplToJson(_$StickyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'zIndex': instance.zIndex,
      'color': _$JsonConverterToJson<Map<String, dynamic>, Color>(
          instance.color, const ColorJsonConverter().toJson),
      'position': const OffsetJsonConverter().toJson(instance.position),
      'size': _$JsonConverterToJson<Map<String, dynamic>, Size>(
          instance.size, const SizeJsonConverter().toJson),
      'type': _$StickyTypeEnumMap[instance.type]!,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$StickyTypeEnumMap = {
  StickyType.note: 'note',
  StickyType.sticker: 'sticker',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
