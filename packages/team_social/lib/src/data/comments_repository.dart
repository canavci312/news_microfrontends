import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:team_social/src/domain/comments/comment.dart';
import 'package:team_social/src/domain/comments/comment_list.dart';
import 'package:team_social/src/domain/comments/i_comments_repository.dart';


class FirestoreCommentsRepository implements ICommentsRepository {
  @override
  Future<CommentList>? fetchCommentList(String url) async {
    var bytes = utf8.encode(url); // data being hashed

    var digest = sha1.convert(bytes);

    var snapshots = await FirebaseFirestore.instance
        .collection('comments')
        .doc(hashUrl(url))
        .collection('messages')
        .get();
    var comment =
        snapshots.docs.map((e) => Comment.fromJson(e.data())).toList();
    return CommentList(comment: comment, url: url);
  }

  @override
  Future<void> sendComment(String url, Comment comment) async {
    var snapshots = await FirebaseFirestore.instance
        .collection('comments')
        .doc(hashUrl(url))
        .collection('messages')
        .add(comment.toJson());
  }

  String hashUrl(String url) {
    var bytes = utf8.encode(url); // data being hashed

    var digest = sha1.convert(bytes);
    return digest.toString();
  }
}
