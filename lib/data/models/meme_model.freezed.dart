// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemeModel _$MemeModelFromJson(Map<String, dynamic> json) {
  return _MemeModel.fromJson(json);
}

/// @nodoc
mixin _$MemeModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'box_count')
  int? get boxCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeModelCopyWith<MemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeModelCopyWith<$Res> {
  factory $MemeModelCopyWith(MemeModel value, $Res Function(MemeModel) then) =
      _$MemeModelCopyWithImpl<$Res, MemeModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? url,
      int? width,
      int? height,
      @JsonKey(name: 'box_count') int? boxCount});
}

/// @nodoc
class _$MemeModelCopyWithImpl<$Res, $Val extends MemeModel>
    implements $MemeModelCopyWith<$Res> {
  _$MemeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? boxCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      boxCount: freezed == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemeModelImplCopyWith<$Res>
    implements $MemeModelCopyWith<$Res> {
  factory _$$MemeModelImplCopyWith(
          _$MemeModelImpl value, $Res Function(_$MemeModelImpl) then) =
      __$$MemeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? url,
      int? width,
      int? height,
      @JsonKey(name: 'box_count') int? boxCount});
}

/// @nodoc
class __$$MemeModelImplCopyWithImpl<$Res>
    extends _$MemeModelCopyWithImpl<$Res, _$MemeModelImpl>
    implements _$$MemeModelImplCopyWith<$Res> {
  __$$MemeModelImplCopyWithImpl(
      _$MemeModelImpl _value, $Res Function(_$MemeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? boxCount = freezed,
  }) {
    return _then(_$MemeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      boxCount: freezed == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemeModelImpl implements _MemeModel {
  const _$MemeModelImpl(
      {this.id,
      this.name,
      this.url,
      this.width,
      this.height,
      @JsonKey(name: 'box_count') this.boxCount});

  factory _$MemeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemeModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;
  @override
  @JsonKey(name: 'box_count')
  final int? boxCount;

  @override
  String toString() {
    return 'MemeModel(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.boxCount, boxCount) ||
                other.boxCount == boxCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, url, width, height, boxCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeModelImplCopyWith<_$MemeModelImpl> get copyWith =>
      __$$MemeModelImplCopyWithImpl<_$MemeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemeModelImplToJson(
      this,
    );
  }
}

abstract class _MemeModel implements MemeModel {
  const factory _MemeModel(
      {final String? id,
      final String? name,
      final String? url,
      final int? width,
      final int? height,
      @JsonKey(name: 'box_count') final int? boxCount}) = _$MemeModelImpl;

  factory _MemeModel.fromJson(Map<String, dynamic> json) =
      _$MemeModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get url;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(name: 'box_count')
  int? get boxCount;
  @override
  @JsonKey(ignore: true)
  _$$MemeModelImplCopyWith<_$MemeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
