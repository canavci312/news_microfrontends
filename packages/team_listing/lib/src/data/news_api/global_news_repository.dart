

import 'package:team_listing/src/data/news_api/news_api.dart';
import 'package:team_listing/src/domain/global_news/i_global_news_repository.dart';
import 'package:team_listing/src/domain/global_news/news.dart';

class GlobalNewsRepository implements IGlobalNewsRepository {
  final NewsApi _newsApi;
  GlobalNewsRepository(this._newsApi);

  @override
  Future<List<News>> fetchHeadlines() async {
    var newsDTOList = await _newsApi.fetchLatestNews();
    var news = newsDTOList
        ?.map((e) => News(
              e.source?.name ?? 'Unknown',
              e.title ?? 'No Title',
              e.description ?? 'No Description',
              e.url!,
              e.urlToImage ?? '',
              e.publishedAt!,
              e.content ?? 'No content',
              author: e.author,
            ))
        .toList();
    return news!;
  }

}
