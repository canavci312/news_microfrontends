import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';


part 'news_dto.g.dart';
part 'news_dto.freezed.dart';

@freezed

/// The model that we expect fron Google NewsDTO api
abstract class NewsDTO with _$NewsDTO {
  const factory NewsDTO({
    Source? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _NewsDTO;

  factory NewsDTO.fromJson(Map<String, dynamic> json) => _$NewsDTOFromJson(json);
}