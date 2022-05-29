// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentList _$$_CommentListFromJson(Map<String, dynamic> json) =>
    _$_CommentList(
      comment: (json['comment'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_CommentListToJson(_$_CommentList instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'url': instance.url,
    };
