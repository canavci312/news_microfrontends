
import 'package:rake/rake.dart';
import 'package:team_supportive/src/data/news_api/news_api.dart';
import 'package:team_supportive/src/domain/global_news/i_related_news_repository.dart';
import 'package:team_supportive/src/domain/global_news/news.dart';

class RelatedNewsRepository implements IRelatedNewsRepository {
  final NewsApi _newsApi;
  RelatedNewsRepository(this._newsApi);

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

  @override
  Future<List<News>> fetchRelatedArticles(News article) async {
    final rake = Rake();
    String query = article.title + article.content;
    var ranking = rake.rank(query, minFrequency: 2);
    print(ranking);
    if (ranking.isNotEmpty) {
      var newsDTOList = await _newsApi.fetchRelatedArticles(ranking[0]);
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
    } else {
     return  fetchHeadlines();
    }
  }
}
