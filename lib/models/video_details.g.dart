// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Size _$$_SizeFromJson(Map<String, dynamic> json) => _$_Size(
      height: json['height'] as int,
      width: json['width'] as int,
    );

Map<String, dynamic> _$$_SizeToJson(_$_Size instance) => <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
    };

_$_VideoDetails _$$_VideoDetailsFromJson(Map<String, dynamic> json) =>
    _$_VideoDetails(
      size: json['size'] == null
          ? null
          : Size.fromJson(json['size'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$_VideoDetailsToJson(_$_VideoDetails instance) =>
    <String, dynamic>{
      'size': instance.size,
      'duration': instance.duration?.inMicroseconds,
    };
