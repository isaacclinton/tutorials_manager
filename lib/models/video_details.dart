import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_details.freezed.dart';
part 'video_details.g.dart';

@freezed
class Size with _$Size {
  const factory Size({
    required int height,
    required int width,
  }) = _Size;

  factory Size.fromJson(Map<String, Object?> json) => _$SizeFromJson(json);
}

@freezed
class VideoDetails with _$VideoDetails {
  const factory VideoDetails({
    Size? size,
    Duration? duration,
  }) = _VideoDetails;

  factory VideoDetails.fromJson(Map<String, Object?> json) => _$VideoDetailsFromJson(json);
}
