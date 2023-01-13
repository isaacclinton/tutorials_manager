// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeCopyWith<Size> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeCopyWith<$Res> {
  factory $SizeCopyWith(Size value, $Res Function(Size) then) =
      _$SizeCopyWithImpl<$Res, Size>;
  @useResult
  $Res call({int height, int width});
}

/// @nodoc
class _$SizeCopyWithImpl<$Res, $Val extends Size>
    implements $SizeCopyWith<$Res> {
  _$SizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SizeCopyWith<$Res> implements $SizeCopyWith<$Res> {
  factory _$$_SizeCopyWith(_$_Size value, $Res Function(_$_Size) then) =
      __$$_SizeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, int width});
}

/// @nodoc
class __$$_SizeCopyWithImpl<$Res> extends _$SizeCopyWithImpl<$Res, _$_Size>
    implements _$$_SizeCopyWith<$Res> {
  __$$_SizeCopyWithImpl(_$_Size _value, $Res Function(_$_Size) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$_Size(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Size with DiagnosticableTreeMixin implements _Size {
  const _$_Size({required this.height, required this.width});

  factory _$_Size.fromJson(Map<String, dynamic> json) => _$$_SizeFromJson(json);

  @override
  final int height;
  @override
  final int width;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Size(height: $height, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Size'))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Size &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SizeCopyWith<_$_Size> get copyWith =>
      __$$_SizeCopyWithImpl<_$_Size>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SizeToJson(
      this,
    );
  }
}

abstract class _Size implements Size {
  const factory _Size({required final int height, required final int width}) =
      _$_Size;

  factory _Size.fromJson(Map<String, dynamic> json) = _$_Size.fromJson;

  @override
  int get height;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$_SizeCopyWith<_$_Size> get copyWith => throw _privateConstructorUsedError;
}

VideoDetails _$VideoDetailsFromJson(Map<String, dynamic> json) {
  return _VideoDetails.fromJson(json);
}

/// @nodoc
mixin _$VideoDetails {
  Size? get size => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDetailsCopyWith<VideoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDetailsCopyWith<$Res> {
  factory $VideoDetailsCopyWith(
          VideoDetails value, $Res Function(VideoDetails) then) =
      _$VideoDetailsCopyWithImpl<$Res, VideoDetails>;
  @useResult
  $Res call({Size? size, Duration? duration});

  $SizeCopyWith<$Res>? get size;
}

/// @nodoc
class _$VideoDetailsCopyWithImpl<$Res, $Val extends VideoDetails>
    implements $VideoDetailsCopyWith<$Res> {
  _$VideoDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SizeCopyWith<$Res>? get size {
    if (_value.size == null) {
      return null;
    }

    return $SizeCopyWith<$Res>(_value.size!, (value) {
      return _then(_value.copyWith(size: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VideoDetailsCopyWith<$Res>
    implements $VideoDetailsCopyWith<$Res> {
  factory _$$_VideoDetailsCopyWith(
          _$_VideoDetails value, $Res Function(_$_VideoDetails) then) =
      __$$_VideoDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Size? size, Duration? duration});

  @override
  $SizeCopyWith<$Res>? get size;
}

/// @nodoc
class __$$_VideoDetailsCopyWithImpl<$Res>
    extends _$VideoDetailsCopyWithImpl<$Res, _$_VideoDetails>
    implements _$$_VideoDetailsCopyWith<$Res> {
  __$$_VideoDetailsCopyWithImpl(
      _$_VideoDetails _value, $Res Function(_$_VideoDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_VideoDetails(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoDetails with DiagnosticableTreeMixin implements _VideoDetails {
  const _$_VideoDetails({this.size, this.duration});

  factory _$_VideoDetails.fromJson(Map<String, dynamic> json) =>
      _$$_VideoDetailsFromJson(json);

  @override
  final Size? size;
  @override
  final Duration? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoDetails(size: $size, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoDetails'))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoDetails &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoDetailsCopyWith<_$_VideoDetails> get copyWith =>
      __$$_VideoDetailsCopyWithImpl<_$_VideoDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoDetailsToJson(
      this,
    );
  }
}

abstract class _VideoDetails implements VideoDetails {
  const factory _VideoDetails({final Size? size, final Duration? duration}) =
      _$_VideoDetails;

  factory _VideoDetails.fromJson(Map<String, dynamic> json) =
      _$_VideoDetails.fromJson;

  @override
  Size? get size;
  @override
  Duration? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_VideoDetailsCopyWith<_$_VideoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
