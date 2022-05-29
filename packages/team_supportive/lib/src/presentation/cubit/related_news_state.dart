part of 'related_news_cubit.dart';

@freezed
class RelatedNewsState with _$RelatedNewsState {
    const factory RelatedNewsState.initial() = _Initial;

  const factory RelatedNewsState.loading() = _Loading;

  const factory RelatedNewsState.success(List<News> relatedNews) = _Success;


}
