import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_listing/src/domain/global_news/news.dart';
import 'package:team_listing/src/presentation/news_detail/cubit/news_detail_cubit.dart';
import 'package:team_listing/src/presentation/news_detail/view/news_detail_page.dart';
import 'package:team_social/team_social.dart';
import 'package:team_supportive/team_supportive.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsDetailCubit, NewsDetailState>(
      builder: (context, state) {
        return state.when(
          initial: (news, relatedNews) {
            return Scaffold(
              appBar: AppBar(title: Text(news.title)),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(news.content),
                      RelatedNewsPage(news.toJson(), (p0) {
                        Navigator.of(context).push<MaterialPageRoute>(
                          MaterialPageRoute(
                            builder: (context) =>
                                NewsDetailPage(News.fromJson(p0)),
                          ),
                        );
                      }),
                     CommentsPage(news.url),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
