part of 'news_detail_cubit.dart';

@freezed
class NewsDetailState with _$NewsDetailState {
  const factory NewsDetailState.initial(News news,List<News> relatedNews) = _Initial;


}
