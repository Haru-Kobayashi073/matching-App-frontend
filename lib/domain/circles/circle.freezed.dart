// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'circle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Circle _$CircleFromJson(Map<String, dynamic> json) {
  return _Circle.fromJson(json);
}

/// @nodoc
mixin _$Circle {
  dynamic get createdAt => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;
  dynamic get deletedAt => throw _privateConstructorUsedError;
  String get circleName => throw _privateConstructorUsedError;
  String get circleId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CircleCopyWith<Circle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleCopyWith<$Res> {
  factory $CircleCopyWith(Circle value, $Res Function(Circle) then) =
      _$CircleCopyWithImpl<$Res, Circle>;
  @useResult
  $Res call(
      {dynamic createdAt,
      dynamic updatedAt,
      dynamic deletedAt,
      String circleName,
      String circleId,
      String description});
}

/// @nodoc
class _$CircleCopyWithImpl<$Res, $Val extends Circle>
    implements $CircleCopyWith<$Res> {
  _$CircleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = null,
    Object? circleName = null,
    Object? circleId = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      circleName: null == circleName
          ? _value.circleName
          : circleName // ignore: cast_nullable_to_non_nullable
              as String,
      circleId: null == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CircleCopyWith<$Res> implements $CircleCopyWith<$Res> {
  factory _$$_CircleCopyWith(_$_Circle value, $Res Function(_$_Circle) then) =
      __$$_CircleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic createdAt,
      dynamic updatedAt,
      dynamic deletedAt,
      String circleName,
      String circleId,
      String description});
}

/// @nodoc
class __$$_CircleCopyWithImpl<$Res>
    extends _$CircleCopyWithImpl<$Res, _$_Circle>
    implements _$$_CircleCopyWith<$Res> {
  __$$_CircleCopyWithImpl(_$_Circle _value, $Res Function(_$_Circle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = null,
    Object? circleName = null,
    Object? circleId = null,
    Object? description = null,
  }) {
    return _then(_$_Circle(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      circleName: null == circleName
          ? _value.circleName
          : circleName // ignore: cast_nullable_to_non_nullable
              as String,
      circleId: null == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Circle with DiagnosticableTreeMixin implements _Circle {
  const _$_Circle(
      {required this.createdAt,
      required this.updatedAt,
      required this.deletedAt,
      required this.circleName,
      required this.circleId,
      required this.description});

  factory _$_Circle.fromJson(Map<String, dynamic> json) =>
      _$$_CircleFromJson(json);

  @override
  final dynamic createdAt;
  @override
  final dynamic updatedAt;
  @override
  final dynamic deletedAt;
  @override
  final String circleName;
  @override
  final String circleId;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Circle(createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, circleName: $circleName, circleId: $circleId, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Circle'))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt))
      ..add(DiagnosticsProperty('circleName', circleName))
      ..add(DiagnosticsProperty('circleId', circleId))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Circle &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.circleName, circleName) ||
                other.circleName == circleName) &&
            (identical(other.circleId, circleId) ||
                other.circleId == circleId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      circleName,
      circleId,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CircleCopyWith<_$_Circle> get copyWith =>
      __$$_CircleCopyWithImpl<_$_Circle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CircleToJson(
      this,
    );
  }
}

abstract class _Circle implements Circle {
  const factory _Circle(
      {required final dynamic createdAt,
      required final dynamic updatedAt,
      required final dynamic deletedAt,
      required final String circleName,
      required final String circleId,
      required final String description}) = _$_Circle;

  factory _Circle.fromJson(Map<String, dynamic> json) = _$_Circle.fromJson;

  @override
  dynamic get createdAt;
  @override
  dynamic get updatedAt;
  @override
  dynamic get deletedAt;
  @override
  String get circleName;
  @override
  String get circleId;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_CircleCopyWith<_$_Circle> get copyWith =>
      throw _privateConstructorUsedError;
}
