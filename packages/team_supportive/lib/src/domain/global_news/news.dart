import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  const factory News(
    String source,
    String title,
    String description,
    String url,
    String urlToImage,
    String publishedAt,
    String content, {
    String? author,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
