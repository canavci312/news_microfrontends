import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_social/src/domain/comments/comment.dart';
import 'package:team_social/src/domain/comments/comment_list.dart';
import 'package:team_social/src/domain/comments/i_comments_repository.dart';


part 'comments_state.dart';
part 'comments_cubit.freezed.dart';

class CommentsCubit extends Cubit<CommentsState> {
  final ICommentsRepository _commentsRepository;
  final String _url;
  CommentsCubit(this._url, this._commentsRepository)
      : super(CommentsState.initial());
  Future<void> sendMessage(Comment comment) async {
    await _commentsRepository.sendComment(_url, comment);
    await fetchComments();
  }

  Future<void> fetchComments() async {
    emit(CommentsState.loading());
    var commentList = await _commentsRepository.fetchCommentList(_url);
    if (commentList != null) {
      emit(CommentsState.success(commentList));
    }
  }
}
