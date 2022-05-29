import 'package:get_it/get_it.dart';
import 'package:team_listing/src/data/news_api/global_news_repository.dart';
import 'package:team_listing/src/data/news_api/news_api.dart';
import 'package:team_listing/src/domain/global_news/i_global_news_repository.dart';

final listingLocator = GetIt.instance;

Future<void> setupListing() async {
  listingLocator
    ..registerLazySingleton<NewsApi>(() => (NewsApi()))
    ..registerLazySingleton<IGlobalNewsRepository>(
      () => GlobalNewsRepository(listingLocator()),
    );
}
