import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/models/models.dart';

part 'tutorial.freezed.dart';
part 'tutorial.g.dart';

@freezed
class Tutorial with _$Tutorial {
  const factory Tutorial({
    String? id,
    required String videoPath,
    VideoDetails? videoDetails,
    required DateTime lastOpened,
    required int lastPlayedSeconds,
  }) = _Tutorial;

  factory Tutorial.fromJson(Map<String, Object?> json) =>
      _$TutorialFromJson(json);
}
