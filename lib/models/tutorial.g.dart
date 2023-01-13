// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tutorial _$$_TutorialFromJson(Map<String, dynamic> json) => _$_Tutorial(
      id: json['id'] as String?,
      videoPath: json['videoPath'] as String,
      videoDetails: json['videoDetails'] == null
          ? null
          : VideoDetails.fromJson(json['videoDetails'] as Map<String, dynamic>),
      lastOpened: DateTime.parse(json['lastOpened'] as String),
      lastPlayedSeconds: json['lastPlayedSeconds'] as int,
    );

Map<String, dynamic> _$$_TutorialToJson(_$_Tutorial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoPath': instance.videoPath,
      'videoDetails': instance.videoDetails,
      'lastOpened': instance.lastOpened.toIso8601String(),
      'lastPlayedSeconds': instance.lastPlayedSeconds,
    };
