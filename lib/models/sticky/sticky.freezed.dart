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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sticky _$StickyFromJson(Map<String, dynamic> json) {
  return _Sticky.fromJson(json);
}

/// @nodoc
mixin _$Sticky {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @ColorJsonConverter()
  Color? get color => throw _privateConstructorUsedError;
  @OffsetJsonConverter()
  Offset? get position => throw _privateConstructorUsedError;
  @SizeJsonConverter()
  Size? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickyCopyWith<Sticky> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickyCopyWith<$Res> {
  factory $StickyCopyWith(Sticky value, $Res Function(Sticky) then) =
      _$StickyCopyWithImpl<$Res, Sticky>;
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      DateTime? createdAt,
      DateTime? updatedAt,
      @ColorJsonConverter() Color? color,
      @OffsetJsonConverter() Offset? position,
      @SizeJsonConverter() Size? size});
}

/// @nodoc
class _$StickyCopyWithImpl<$Res, $Val extends Sticky>
    implements $StickyCopyWith<$Res> {
  _$StickyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? color = freezed,
    Object? position = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size?,
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
      {int id,
      String title,
      String content,
      DateTime? createdAt,
      DateTime? updatedAt,
      @ColorJsonConverter() Color? color,
      @OffsetJsonConverter() Offset? position,
      @SizeJsonConverter() Size? size});
}

/// @nodoc
class __$$StickyImplCopyWithImpl<$Res>
    extends _$StickyCopyWithImpl<$Res, _$StickyImpl>
    implements _$$StickyImplCopyWith<$Res> {
  __$$StickyImplCopyWithImpl(
      _$StickyImpl _value, $Res Function(_$StickyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? color = freezed,
    Object? position = freezed,
    Object? size = freezed,
  }) {
    return _then(_$StickyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StickyImpl implements _Sticky {
  const _$StickyImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.createdAt,
      required this.updatedAt,
      @ColorJsonConverter() this.color,
      @OffsetJsonConverter() this.position,
      @SizeJsonConverter() this.size});

  factory _$StickyImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickyImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @ColorJsonConverter()
  final Color? color;
  @override
  @OffsetJsonConverter()
  final Offset? position;
  @override
  @SizeJsonConverter()
  final Size? size;

  @override
  String toString() {
    return 'Sticky(id: $id, title: $title, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, color: $color, position: $position, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
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
            (identical(other.color, color) || other.color == color) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, createdAt,
      updatedAt, color, position, size);

  @JsonKey(ignore: true)
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

abstract class _Sticky implements Sticky {
  const factory _Sticky(
      {required final int id,
      required final String title,
      required final String content,
      required final DateTime? createdAt,
      required final DateTime? updatedAt,
      @ColorJsonConverter() final Color? color,
      @OffsetJsonConverter() final Offset? position,
      @SizeJsonConverter() final Size? size}) = _$StickyImpl;

  factory _Sticky.fromJson(Map<String, dynamic> json) = _$StickyImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @ColorJsonConverter()
  Color? get color;
  @override
  @OffsetJsonConverter()
  Offset? get position;
  @override
  @SizeJsonConverter()
  Size? get size;
  @override
  @JsonKey(ignore: true)
  _$$StickyImplCopyWith<_$StickyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
