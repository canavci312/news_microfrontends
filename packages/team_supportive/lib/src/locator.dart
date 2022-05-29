import 'package:get_it/get_it.dart';
import 'package:team_supportive/src/data/news_api/news_api.dart';
import 'package:team_supportive/src/data/news_api/related_news_repository.dart';
import 'package:team_supportive/src/domain/global_news/i_related_news_repository.dart';

final supportiveLocator = GetIt.instance;

Future<void> setupSupportive() async {
  supportiveLocator
    ..registerLazySingleton<NewsApi>(() => (NewsApi()))
    ..registerLazySingleton<IRelatedNewsRepository>(
      () => RelatedNewsRepository(supportiveLocator()),
    );
}
