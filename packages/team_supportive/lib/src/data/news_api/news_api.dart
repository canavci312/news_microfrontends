import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rake/rake.dart';

import 'model/model.dart';
import 'model/response_model.dart';

///Exception for non dio errors
class UnexpectedError implements Exception {}

/// {@template google_news_service}
/// Service that takes news data from google news api.
/// {@endtemplate}
class NewsApi {
  /// {@macro google_news_service}
  NewsApi({Dio? dioClient})
      : _dioClient = dioClient ?? Dio()
          ..interceptors
              .add(PrettyDioLogger(requestHeader: true, requestBody: true));

  /// url used for fetching news data
  ///visible for testing
  static const googleUrl =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=bf104c17d6a1464796e26f4e9b186046';

  final Dio _dioClient;

  Future<List<NewsDTO>?> fetchLatestNews() async {
    try {
      final responseBody =
          await _dioClient.get<Map<String, dynamic>>(googleUrl);
      final newsApiResponse = NewsApiResponse.fromJson(responseBody.data!);
      return newsApiResponse.news;
    } on DioError catch (e) {
      log(e.toString());
      rethrow;
    } catch (e) {
      log(e.toString());

      throw UnexpectedError;
    }
  }

  Future<List<NewsDTO>?> fetchRelatedArticles(String text) async {
    try {
      final responseBody = await _dioClient.get<Map<String, dynamic>>(
          'https://newsapi.org/v2/everything',
          queryParameters: <String, dynamic>{
            'q': text.split(' ')[0],
            'apiKey': 'bf104c17d6a1464796e26f4e9b186046'
          });
      final newsApiResponse = NewsApiResponse.fromJson(responseBody.data!);
      return newsApiResponse.news;
    } on DioError catch (e) {
      log(e.toString());
      rethrow;
    } catch (e) {
      log(e.toString());

      throw UnexpectedError;
    }
  }
}
