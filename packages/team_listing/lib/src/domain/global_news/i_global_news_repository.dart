import 'news.dart';

abstract class IGlobalNewsRepository {
  Future<List<News>> fetchHeadlines();

}
