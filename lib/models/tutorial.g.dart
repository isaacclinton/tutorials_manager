// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notes _$$_NotesFromJson(Map<String, dynamic> json) => _$_Notes(
      notesType: $enumDecode(_$NotesTypeEnumMap, json['notesType']),
      notes: (json['notes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$$_NotesToJson(_$_Notes instance) => <String, dynamic>{
      'notesType': _$NotesTypeEnumMap[instance.notesType]!,
      'notes': instance.notes.map((k, e) => MapEntry(k.toString(), e)),
    };

const _$NotesTypeEnumMap = {
  NotesType.markdown: 'markdown',
};

_$_Tutorial _$$_TutorialFromJson(Map<String, dynamic> json) => _$_Tutorial(
      id: json['id'] as String?,
      videoPath: json['videoPath'] as String,
      videoDetails: json['videoDetails'] == null
          ? null
          : VideoDetails.fromJson(json['videoDetails'] as Map<String, dynamic>),
      lastOpened: DateTime.parse(json['lastOpened'] as String),
      lastPlayedSeconds: json['lastPlayedSeconds'] as int,
      notes: json['notes'] == null
          ? null
          : Notes.fromJson(json['notes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TutorialToJson(_$_Tutorial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoPath': instance.videoPath,
      'videoDetails': instance.videoDetails,
      'lastOpened': instance.lastOpened.toIso8601String(),
      'lastPlayedSeconds': instance.lastPlayedSeconds,
      'notes': instance.notes,
    };
