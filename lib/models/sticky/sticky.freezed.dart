// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticky.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sticky _$StickyFromJson(Map<String, dynamic> json) {
  return _Sticky.fromJson(json);
}

/// @nodoc
mixin _$Sticky {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String get content => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(5)
  int get zIndex => throw _privateConstructorUsedError;
  @HiveField(6)
  @ColorJsonConverter()
  Color? get color => throw _privateConstructorUsedError;
  @HiveField(7)
  @OffsetJsonConverter()
  Offset get position => throw _privateConstructorUsedError;
  @HiveField(8)
  @SizeJsonConverter()
  Size? get size => throw _privateConstructorUsedError;
  @HiveField(9)
  StickyType get type => throw _privateConstructorUsedError;

  /// Serializes this Sticky to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sticky
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StickyCopyWith<Sticky> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickyCopyWith<$Res> {
  factory $StickyCopyWith(Sticky value, $Res Function(Sticky) then) =
      _$StickyCopyWithImpl<$Res, Sticky>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String content,
      @HiveField(3) DateTime? createdAt,
      @HiveField(4) DateTime? updatedAt,
      @HiveField(5) int zIndex,
      @HiveField(6) @ColorJsonConverter() Color? color,
      @HiveField(7) @OffsetJsonConverter() Offset position,
      @HiveField(8) @SizeJsonConverter() Size? size,
      @HiveField(9) StickyType type});
}

/// @nodoc
class _$StickyCopyWithImpl<$Res, $Val extends Sticky>
    implements $StickyCopyWith<$Res> {
  _$StickyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sticky
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? zIndex = null,
    Object? color = freezed,
    Object? position = null,
    Object? size = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      zIndex: null == zIndex
          ? _value.zIndex
          : zIndex // ignore: cast_nullable_to_non_nullable
              as int,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StickyType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StickyImplCopyWith<$Res> implements $StickyCopyWith<$Res> {
  factory _$$StickyImplCopyWith(
          _$StickyImpl value, $Res Function(_$StickyImpl) then) =
      __$$StickyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String content,
      @HiveField(3) DateTime? createdAt,
      @HiveField(4) DateTime? updatedAt,
      @HiveField(5) int zIndex,
      @HiveField(6) @ColorJsonConverter() Color? color,
      @HiveField(7) @OffsetJsonConverter() Offset position,
      @HiveField(8) @SizeJsonConverter() Size? size,
      @HiveField(9) StickyType type});
}

/// @nodoc
class __$$StickyImplCopyWithImpl<$Res>
    extends _$StickyCopyWithImpl<$Res, _$StickyImpl>
    implements _$$StickyImplCopyWith<$Res> {
  __$$StickyImplCopyWithImpl(
      _$StickyImpl _value, $Res Function(_$StickyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sticky
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? zIndex = null,
    Object? color = freezed,
    Object? position = null,
    Object? size = freezed,
    Object? type = null,
  }) {
    return _then(_$StickyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      zIndex: null == zIndex
          ? _value.zIndex
          : zIndex // ignore: cast_nullable_to_non_nullable
              as int,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StickyType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'StickyAdapter')
class _$StickyImpl extends _Sticky {
  _$StickyImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.content,
      @HiveField(3) required this.createdAt,
      @HiveField(4) required this.updatedAt,
      @HiveField(5) required this.zIndex,
      @HiveField(6) @ColorJsonConverter() this.color,
      @HiveField(7) @OffsetJsonConverter() required this.position,
      @HiveField(8) @SizeJsonConverter() this.size,
      @HiveField(9) required this.type})
      : super._();

  factory _$StickyImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickyImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String content;
  @override
  @HiveField(3)
  final DateTime? createdAt;
  @override
  @HiveField(4)
  final DateTime? updatedAt;
  @override
  @HiveField(5)
  final int zIndex;
  @override
  @HiveField(6)
  @ColorJsonConverter()
  final Color? color;
  @override
  @HiveField(7)
  @OffsetJsonConverter()
  final Offset position;
  @override
  @HiveField(8)
  @SizeJsonConverter()
  final Size? size;
  @override
  @HiveField(9)
  final StickyType type;

  @override
  String toString() {
    return 'Sticky(id: $id, title: $title, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, zIndex: $zIndex, color: $color, position: $position, size: $size, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StickyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.zIndex, zIndex) || other.zIndex == zIndex) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, createdAt,
      updatedAt, zIndex, color, position, size, type);

  /// Create a copy of Sticky
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StickyImplCopyWith<_$StickyImpl> get copyWith =>
      __$$StickyImplCopyWithImpl<_$StickyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickyImplToJson(
      this,
    );
  }
}

abstract class _Sticky extends Sticky {
  factory _Sticky(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String title,
      @HiveField(2) required final String content,
      @HiveField(3) required final DateTime? createdAt,
      @HiveField(4) required final DateTime? updatedAt,
      @HiveField(5) required final int zIndex,
      @HiveField(6) @ColorJsonConverter() final Color? color,
      @HiveField(7) @OffsetJsonConverter() required final Offset position,
      @HiveField(8) @SizeJsonConverter() final Size? size,
      @HiveField(9) required final StickyType type}) = _$StickyImpl;
  _Sticky._() : super._();

  factory _Sticky.fromJson(Map<String, dynamic> json) = _$StickyImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String get content;
  @override
  @HiveField(3)
  DateTime? get createdAt;
  @override
  @HiveField(4)
  DateTime? get updatedAt;
  @override
  @HiveField(5)
  int get zIndex;
  @override
  @HiveField(6)
  @ColorJsonConverter()
  Color? get color;
  @override
  @HiveField(7)
  @OffsetJsonConverter()
  Offset get position;
  @override
  @HiveField(8)
  @SizeJsonConverter()
  Size? get size;
  @override
  @HiveField(9)
  StickyType get type;

  /// Create a copy of Sticky
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StickyImplCopyWith<_$StickyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
