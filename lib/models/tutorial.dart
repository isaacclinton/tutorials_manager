import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/models/models.dart';

part 'tutorial.freezed.dart';
part 'tutorial.g.dart';

enum NotesType { markdown }

@freezed
class Notes with _$Notes{
  const factory Notes({
    required NotesType notesType,
    // map of duration in seconds with not at that specific time
    required Map<int, String> notes,
  }) = _Notes;

   factory Notes.fromJson(Map<String, Object?> json) =>
      _$NotesFromJson(json);
}

@freezed
class Tutorial with _$Tutorial {
  const factory Tutorial({
    String? id,
    required String videoPath,
    VideoDetails? videoDetails,
    required DateTime lastOpened,
    required int lastPlayedSeconds,
    Notes? notes,
  }) = _Tutorial;

  factory Tutorial.fromJson(Map<String, Object?> json) =>
      _$TutorialFromJson(json);
}
