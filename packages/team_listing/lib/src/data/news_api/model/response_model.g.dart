// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsApiResonpse _$$_NewsApiResonpseFromJson(Map<String, dynamic> json) =>
    _$_NewsApiResonpse(
      json['status'] as String?,
      json['totalResults'] as int?,
      (json['articles'] as List<dynamic>?)
          ?.map((e) => NewsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsApiResonpseToJson(_$_NewsApiResonpse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.news,
    };
