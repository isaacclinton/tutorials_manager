// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutorial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tutorial _$TutorialFromJson(Map<String, dynamic> json) {
  return _Tutorial.fromJson(json);
}

/// @nodoc
mixin _$Tutorial {
  String? get id => throw _privateConstructorUsedError;
  String get videoPath => throw _privateConstructorUsedError;
  VideoDetails? get videoDetails => throw _privateConstructorUsedError;
  DateTime get lastOpened => throw _privateConstructorUsedError;
  int get lastPlayedSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialCopyWith<Tutorial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialCopyWith<$Res> {
  factory $TutorialCopyWith(Tutorial value, $Res Function(Tutorial) then) =
      _$TutorialCopyWithImpl<$Res, Tutorial>;
  @useResult
  $Res call(
      {String? id,
      String videoPath,
      VideoDetails? videoDetails,
      DateTime lastOpened,
      int lastPlayedSeconds});

  $VideoDetailsCopyWith<$Res>? get videoDetails;
}

/// @nodoc
class _$TutorialCopyWithImpl<$Res, $Val extends Tutorial>
    implements $TutorialCopyWith<$Res> {
  _$TutorialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? videoPath = null,
    Object? videoDetails = freezed,
    Object? lastOpened = null,
    Object? lastPlayedSeconds = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPath: null == videoPath
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      videoDetails: freezed == videoDetails
          ? _value.videoDetails
          : videoDetails // ignore: cast_nullable_to_non_nullable
              as VideoDetails?,
      lastOpened: null == lastOpened
          ? _value.lastOpened
          : lastOpened // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastPlayedSeconds: null == lastPlayedSeconds
          ? _value.lastPlayedSeconds
          : lastPlayedSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoDetailsCopyWith<$Res>? get videoDetails {
    if (_value.videoDetails == null) {
      return null;
    }

    return $VideoDetailsCopyWith<$Res>(_value.videoDetails!, (value) {
      return _then(_value.copyWith(videoDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TutorialCopyWith<$Res> implements $TutorialCopyWith<$Res> {
  factory _$$_TutorialCopyWith(
          _$_Tutorial value, $Res Function(_$_Tutorial) then) =
      __$$_TutorialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String videoPath,
      VideoDetails? videoDetails,
      DateTime lastOpened,
      int lastPlayedSeconds});

  @override
  $VideoDetailsCopyWith<$Res>? get videoDetails;
}

/// @nodoc
class __$$_TutorialCopyWithImpl<$Res>
    extends _$TutorialCopyWithImpl<$Res, _$_Tutorial>
    implements _$$_TutorialCopyWith<$Res> {
  __$$_TutorialCopyWithImpl(
      _$_Tutorial _value, $Res Function(_$_Tutorial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? videoPath = null,
    Object? videoDetails = freezed,
    Object? lastOpened = null,
    Object? lastPlayedSeconds = null,
  }) {
    return _then(_$_Tutorial(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPath: null == videoPath
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      videoDetails: freezed == videoDetails
          ? _value.videoDetails
          : videoDetails // ignore: cast_nullable_to_non_nullable
              as VideoDetails?,
      lastOpened: null == lastOpened
          ? _value.lastOpened
          : lastOpened // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastPlayedSeconds: null == lastPlayedSeconds
          ? _value.lastPlayedSeconds
          : lastPlayedSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tutorial with DiagnosticableTreeMixin implements _Tutorial {
  const _$_Tutorial(
      {this.id,
      required this.videoPath,
      this.videoDetails,
      required this.lastOpened,
      required this.lastPlayedSeconds});

  factory _$_Tutorial.fromJson(Map<String, dynamic> json) =>
      _$$_TutorialFromJson(json);

  @override
  final String? id;
  @override
  final String videoPath;
  @override
  final VideoDetails? videoDetails;
  @override
  final DateTime lastOpened;
  @override
  final int lastPlayedSeconds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tutorial(id: $id, videoPath: $videoPath, videoDetails: $videoDetails, lastOpened: $lastOpened, lastPlayedSeconds: $lastPlayedSeconds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tutorial'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('videoPath', videoPath))
      ..add(DiagnosticsProperty('videoDetails', videoDetails))
      ..add(DiagnosticsProperty('lastOpened', lastOpened))
      ..add(DiagnosticsProperty('lastPlayedSeconds', lastPlayedSeconds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tutorial &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.videoPath, videoPath) ||
                other.videoPath == videoPath) &&
            (identical(other.videoDetails, videoDetails) ||
                other.videoDetails == videoDetails) &&
            (identical(other.lastOpened, lastOpened) ||
                other.lastOpened == lastOpened) &&
            (identical(other.lastPlayedSeconds, lastPlayedSeconds) ||
                other.lastPlayedSeconds == lastPlayedSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, videoPath, videoDetails, lastOpened, lastPlayedSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorialCopyWith<_$_Tutorial> get copyWith =>
      __$$_TutorialCopyWithImpl<_$_Tutorial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorialToJson(
      this,
    );
  }
}

abstract class _Tutorial implements Tutorial {
  const factory _Tutorial(
      {final String? id,
      required final String videoPath,
      final VideoDetails? videoDetails,
      required final DateTime lastOpened,
      required final int lastPlayedSeconds}) = _$_Tutorial;

  factory _Tutorial.fromJson(Map<String, dynamic> json) = _$_Tutorial.fromJson;

  @override
  String? get id;
  @override
  String get videoPath;
  @override
  VideoDetails? get videoDetails;
  @override
  DateTime get lastOpened;
  @override
  int get lastPlayedSeconds;
  @override
  @JsonKey(ignore: true)
  _$$_TutorialCopyWith<_$_Tutorial> get copyWith =>
      throw _privateConstructorUsedError;
}
