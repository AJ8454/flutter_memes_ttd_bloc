// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemeModelImpl _$$MemeModelImplFromJson(Map<String, dynamic> json) =>
    _$MemeModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      boxCount: json['box_count'] as int?,
    );

Map<String, dynamic> _$$MemeModelImplToJson(_$MemeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'box_count': instance.boxCount,
    };
