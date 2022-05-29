import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_social/src/domain/comments/i_comments_repository.dart';
import 'package:team_social/src/locator.dart';
import 'package:team_social/src/presentation/comments/cubit/comments_cubit.dart';
import 'package:team_social/src/presentation/comments/view/comments_view.dart';

class CommentsPage extends StatelessWidget {
  final String url;
  const CommentsPage(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CommentsCubit(url, socialLocator<ICommentsRepository>())
            ..fetchComments(),
      child: CommentsView(),
    );
  }
}
