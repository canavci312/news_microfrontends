import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_supportive/src/domain/global_news/i_related_news_repository.dart';
import 'package:team_supportive/src/domain/global_news/news.dart';

part 'related_news_state.dart';
part 'related_news_cubit.freezed.dart';

class RelatedNewsCubit extends Cubit<RelatedNewsState> {
  IRelatedNewsRepository _relatedNewsRepository;
  RelatedNewsCubit(this._relatedNewsRepository, this._news)
      : super(RelatedNewsState.initial());

  final News _news;
  Future<void> fetchRelatedNews() async {
    emit(RelatedNewsState.loading());
    List<News> relatedNews =
        await _relatedNewsRepository.fetchRelatedArticles(_news);
    emit(RelatedNewsState.success(relatedNews));
  }
}
