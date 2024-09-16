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

CreateSticky _$CreateStickyFromJson(Map<String, dynamic> json) {
  return _CreateSticky.fromJson(json);
}

/// @nodoc
mixin _$CreateSticky {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @ColorJsonConverter()
  Color? get color => throw _privateConstructorUsedError;

  /// Serializes this CreateSticky to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSticky
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStickyCopyWith<CreateSticky> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStickyCopyWith<$Res> {
  factory $CreateStickyCopyWith(
          CreateSticky value, $Res Function(CreateSticky) then) =
      _$CreateStickyCopyWithImpl<$Res, CreateSticky>;
  @useResult
  $Res call({String title, String content, @ColorJsonConverter() Color? color});
}

/// @nodoc
class _$CreateStickyCopyWithImpl<$Res, $Val extends CreateSticky>
    implements $CreateStickyCopyWith<$Res> {
  _$CreateStickyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSticky
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStickyImplCopyWith<$Res>
    implements $CreateStickyCopyWith<$Res> {
  factory _$$CreateStickyImplCopyWith(
          _$CreateStickyImpl value, $Res Function(_$CreateStickyImpl) then) =
      __$$CreateStickyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content, @ColorJsonConverter() Color? color});
}

/// @nodoc
class __$$CreateStickyImplCopyWithImpl<$Res>
    extends _$CreateStickyCopyWithImpl<$Res, _$CreateStickyImpl>
    implements _$$CreateStickyImplCopyWith<$Res> {
  __$$CreateStickyImplCopyWithImpl(
      _$CreateStickyImpl _value, $Res Function(_$CreateStickyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSticky
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? color = freezed,
  }) {
    return _then(_$CreateStickyImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStickyImpl implements _CreateSticky {
  const _$CreateStickyImpl(
      {required this.title,
      required this.content,
      @ColorJsonConverter() this.color});

  factory _$CreateStickyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStickyImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  @ColorJsonConverter()
  final Color? color;

  @override
  String toString() {
    return 'CreateSticky(title: $title, content: $content, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStickyImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, color);

  /// Create a copy of CreateSticky
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStickyImplCopyWith<_$CreateStickyImpl> get copyWith =>
      __$$CreateStickyImplCopyWithImpl<_$CreateStickyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStickyImplToJson(
      this,
    );
  }
}

abstract class _CreateSticky implements CreateSticky {
  const factory _CreateSticky(
      {required final String title,
      required final String content,
      @ColorJsonConverter() final Color? color}) = _$CreateStickyImpl;

  factory _CreateSticky.fromJson(Map<String, dynamic> json) =
      _$CreateStickyImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  @ColorJsonConverter()
  Color? get color;

  /// Create a copy of CreateSticky
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStickyImplCopyWith<_$CreateStickyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateSticky _$UpdateStickyFromJson(Map<String, dynamic> json) {
  return _UpdateSticky.fromJson(json);
}

/// @nodoc
mixin _$UpdateSticky {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @ColorJsonConverter()
  Color? get color => throw _privateConstructorUsedError;

  /// Serializes this UpdateSticky to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSticky
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStickyCopyWith<UpdateSticky> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStickyCopyWith<$Res> {
  factory $UpdateStickyCopyWith(
          UpdateSticky value, $Res Function(UpdateSticky) then) =
      _$UpdateStickyCopyWithImpl<$Res, UpdateSticky>;
  @useResult
  $Res call({String title, String content, @ColorJsonConverter() Color? color});
}

/// @nodoc
class _$UpdateStickyCopyWithImpl<$Res, $Val extends UpdateSticky>
    implements $UpdateStickyCopyWith<$Res> {
  _$UpdateStickyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSticky
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStickyImplCopyWith<$Res>
    implements $UpdateStickyCopyWith<$Res> {
  factory _$$UpdateStickyImplCopyWith(
          _$UpdateStickyImpl value, $Res Function(_$UpdateStickyImpl) then) =
      __$$UpdateStickyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content, @ColorJsonConverter() Color? color});
}

/// @nodoc
class __$$UpdateStickyImplCopyWithImpl<$Res>
    extends _$UpdateStickyCopyWithImpl<$Res, _$UpdateStickyImpl>
    implements _$$UpdateStickyImplCopyWith<$Res> {
  __$$UpdateStickyImplCopyWithImpl(
      _$UpdateStickyImpl _value, $Res Function(_$UpdateStickyImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSticky
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? color = freezed,
  }) {
    return _then(_$UpdateStickyImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStickyImpl implements _UpdateSticky {
  const _$UpdateStickyImpl(
      {required this.title,
      required this.content,
      @ColorJsonConverter() this.color});

  factory _$UpdateStickyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateStickyImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  @ColorJsonConverter()
  final Color? color;

  @override
  String toString() {
    return 'UpdateSticky(title: $title, content: $content, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStickyImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, color);

  /// Create a copy of UpdateSticky
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStickyImplCopyWith<_$UpdateStickyImpl> get copyWith =>
      __$$UpdateStickyImplCopyWithImpl<_$UpdateStickyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStickyImplToJson(
      this,
    );
  }
}

abstract class _UpdateSticky implements UpdateSticky {
  const factory _UpdateSticky(
      {required final String title,
      required final String content,
      @ColorJsonConverter() final Color? color}) = _$UpdateStickyImpl;

  factory _UpdateSticky.fromJson(Map<String, dynamic> json) =
      _$UpdateStickyImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  @ColorJsonConverter()
  Color? get color;

  /// Create a copy of UpdateSticky
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStickyImplCopyWith<_$UpdateStickyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
