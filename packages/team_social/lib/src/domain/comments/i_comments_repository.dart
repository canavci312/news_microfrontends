

import 'package:team_social/src/domain/comments/comment.dart';
import 'package:team_social/src/domain/comments/comment_list.dart';

abstract class ICommentsRepository {
  Future<CommentList>? fetchCommentList(String url);
  Future<void> sendComment(String url,Comment comment);
}
