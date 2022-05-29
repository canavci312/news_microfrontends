part of 'comments_cubit.dart';

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState.initial() = _Initial;
    const factory CommentsState.loading() = _Loading;
    const factory CommentsState.success(CommentList list) = _Success;

}
