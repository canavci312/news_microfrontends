import 'news.dart';

abstract class IRelatedNewsRepository {
    Future<List<News>> fetchHeadlines();

    Future<List<News>> fetchRelatedArticles(News news);

}
