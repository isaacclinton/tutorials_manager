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

Notes _$NotesFromJson(Map<String, dynamic> json) {
  return _Notes.fromJson(json);
}

/// @nodoc
mixin _$Notes {
  NotesType get notesType =>
      throw _privateConstructorUsedError; // map of duration in seconds with not at that specific time
  Map<int, String> get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotesCopyWith<Notes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesCopyWith<$Res> {
  factory $NotesCopyWith(Notes value, $Res Function(Notes) then) =
      _$NotesCopyWithImpl<$Res, Notes>;
  @useResult
  $Res call({NotesType notesType, Map<int, String> notes});
}

/// @nodoc
class _$NotesCopyWithImpl<$Res, $Val extends Notes>
    implements $NotesCopyWith<$Res> {
  _$NotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notesType = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      notesType: null == notesType
          ? _value.notesType
          : notesType // ignore: cast_nullable_to_non_nullable
              as NotesType,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotesCopyWith<$Res> implements $NotesCopyWith<$Res> {
  factory _$$_NotesCopyWith(_$_Notes value, $Res Function(_$_Notes) then) =
      __$$_NotesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotesType notesType, Map<int, String> notes});
}

/// @nodoc
class __$$_NotesCopyWithImpl<$Res> extends _$NotesCopyWithImpl<$Res, _$_Notes>
    implements _$$_NotesCopyWith<$Res> {
  __$$_NotesCopyWithImpl(_$_Notes _value, $Res Function(_$_Notes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notesType = null,
    Object? notes = null,
  }) {
    return _then(_$_Notes(
      notesType: null == notesType
          ? _value.notesType
          : notesType // ignore: cast_nullable_to_non_nullable
              as NotesType,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notes with DiagnosticableTreeMixin implements _Notes {
  const _$_Notes(
      {required this.notesType, required final Map<int, String> notes})
      : _notes = notes;

  factory _$_Notes.fromJson(Map<String, dynamic> json) =>
      _$$_NotesFromJson(json);

  @override
  final NotesType notesType;
// map of duration in seconds with not at that specific time
  final Map<int, String> _notes;
// map of duration in seconds with not at that specific time
  @override
  Map<int, String> get notes {
    if (_notes is EqualUnmodifiableMapView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_notes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Notes(notesType: $notesType, notes: $notes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Notes'))
      ..add(DiagnosticsProperty('notesType', notesType))
      ..add(DiagnosticsProperty('notes', notes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notes &&
            (identical(other.notesType, notesType) ||
                other.notesType == notesType) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, notesType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotesCopyWith<_$_Notes> get copyWith =>
      __$$_NotesCopyWithImpl<_$_Notes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotesToJson(
      this,
    );
  }
}

abstract class _Notes implements Notes {
  const factory _Notes(
      {required final NotesType notesType,
      required final Map<int, String> notes}) = _$_Notes;

  factory _Notes.fromJson(Map<String, dynamic> json) = _$_Notes.fromJson;

  @override
  NotesType get notesType;
  @override // map of duration in seconds with not at that specific time
  Map<int, String> get notes;
  @override
  @JsonKey(ignore: true)
  _$$_NotesCopyWith<_$_Notes> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  Notes? get notes => throw _privateConstructorUsedError;

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
      int lastPlayedSeconds,
      Notes? notes});

  $VideoDetailsCopyWith<$Res>? get videoDetails;
  $NotesCopyWith<$Res>? get notes;
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
    Object? notes = freezed,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as Notes?,
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

  @override
  @pragma('vm:prefer-inline')
  $NotesCopyWith<$Res>? get notes {
    if (_value.notes == null) {
      return null;
    }

    return $NotesCopyWith<$Res>(_value.notes!, (value) {
      return _then(_value.copyWith(notes: value) as $Val);
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
      int lastPlayedSeconds,
      Notes? notes});

  @override
  $VideoDetailsCopyWith<$Res>? get videoDetails;
  @override
  $NotesCopyWith<$Res>? get notes;
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
    Object? notes = freezed,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as Notes?,
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
      required this.lastPlayedSeconds,
      this.notes});

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
  final Notes? notes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tutorial(id: $id, videoPath: $videoPath, videoDetails: $videoDetails, lastOpened: $lastOpened, lastPlayedSeconds: $lastPlayedSeconds, notes: $notes)';
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
      ..add(DiagnosticsProperty('lastPlayedSeconds', lastPlayedSeconds))
      ..add(DiagnosticsProperty('notes', notes));
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
                other.lastPlayedSeconds == lastPlayedSeconds) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, videoPath, videoDetails,
      lastOpened, lastPlayedSeconds, notes);

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
      required final int lastPlayedSeconds,
      final Notes? notes}) = _$_Tutorial;

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
  Notes? get notes;
  @override
  @JsonKey(ignore: true)
  _$$_TutorialCopyWith<_$_Tutorial> get copyWith =>
      throw _privateConstructorUsedError;
}
