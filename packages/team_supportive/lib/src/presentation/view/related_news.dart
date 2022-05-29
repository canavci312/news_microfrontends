import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_supportive/src/domain/global_news/i_related_news_repository.dart';
import 'package:team_supportive/src/domain/global_news/news.dart';
import 'package:team_supportive/src/locator.dart';
import 'package:team_supportive/src/presentation/cubit/related_news_cubit.dart';
import 'package:team_supportive/src/presentation/view/news_tile.dart';

class RelatedNewsPage extends StatelessWidget {
  const RelatedNewsPage(this._news, this._onPressed, {super.key});

  final Map<String,dynamic> _news;
  final Function(Map<String,dynamic>) _onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RelatedNewsCubit(supportiveLocator<IRelatedNewsRepository>(), News.fromJson(_news))..fetchRelatedNews(),
      child: RelatedNewsView(_onPressed),
    );
  }
}

class RelatedNewsView extends StatelessWidget {
  const RelatedNewsView(this._onPressed, {super.key});

  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelatedNewsCubit, RelatedNewsState>(
      builder: (context, state) {
        return state.when(
          initial: SizedBox.new,
          loading: CircularProgressIndicator.new,
          success: (relatedNews) => ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: relatedNews.length > 3 ? 3 : relatedNews.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => _onPressed(relatedNews[index].toJson()),
                child: NewsTile(relatedNews[index]),
              );
            },
          ),
        );
      },
    );
  }
}
