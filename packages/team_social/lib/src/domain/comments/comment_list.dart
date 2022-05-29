import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_social/src/domain/comments/comment.dart';

part 'comment_list.freezed.dart';
part 'comment_list.g.dart';

@freezed
class CommentList with _$CommentList {
  const factory CommentList({
   required List<Comment> comment,
   required String url,
  }) = _CommentList;

  factory CommentList.fromJson(Map<String, dynamic> json) => _$CommentListFromJson(json);
}