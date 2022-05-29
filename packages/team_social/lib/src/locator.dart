import 'package:get_it/get_it.dart';
import 'package:team_social/src/data/comments_repository.dart';
import 'package:team_social/src/domain/comments/i_comments_repository.dart';

final socialLocator = GetIt.instance;

Future<void> teamSocialSetup() async {
  socialLocator.registerLazySingleton<ICommentsRepository>(
    FirestoreCommentsRepository.new,
  );
}
