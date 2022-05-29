// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      timestamp: json['timestamp'] as int,
      sender: json['sender'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'sender': instance.sender,
      'text': instance.text,
    };
