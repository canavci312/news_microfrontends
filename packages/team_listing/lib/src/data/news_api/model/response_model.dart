
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_listing/src/data/news_api/model/news_dto.dart';

part 'response_model.g.dart';

part 'response_model.freezed.dart';

@freezed
class NewsApiResponse with _$NewsApiResponse {
  const factory NewsApiResponse(String? status, int? totalResults,
      @JsonKey(name: 'articles') List<NewsDTO>? news) = _NewsApiResonpse;
  factory NewsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsApiResponseFromJson(json);
}
