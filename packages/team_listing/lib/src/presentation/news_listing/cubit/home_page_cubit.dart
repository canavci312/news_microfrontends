import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_listing/src/domain/global_news/i_global_news_repository.dart';
import 'package:team_listing/src/domain/global_news/news.dart';


part 'home_page_state.dart';
part 'home_page_cubit.freezed.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this._globalNewsRepository) : super(HomePageState.initial());
  final IGlobalNewsRepository _globalNewsRepository;
  List<News> _newsList = [];
  FutureOr<void> fetchHeadlines() async {
    emit(const HomePageState.loading());
    try {
      final result = await _globalNewsRepository.fetchHeadlines();
      emit(HomePageState.success(result));
    } catch (e) {
      emit(const HomePageState.error());
    }
  }

  FutureOr<void> filterNews(String input) {
    if (_newsList.isNotEmpty) {
      final filteredNews = _newsList
          .where(
            (element) => element.title.toLowerCase().contains(
                  input.toLowerCase(),
                ),
          )
          .toList();
      emit(HomePageState.success(filteredNews));
    }
  }
}
