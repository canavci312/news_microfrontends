import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_listing/src/domain/global_news/i_global_news_repository.dart';
import 'package:team_listing/src/locator.dart';
import 'package:team_listing/src/presentation/news_listing/home_page.dart';
import 'package:team_listing/src/presentation/news_listing/view/home_page_view.dart';




class HomePagePage extends StatelessWidget {
  const HomePagePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomePageCubit(listingLocator<IGlobalNewsRepository>())..fetchHeadlines(),
      child: const HomePageView(),
    );
  }
}
