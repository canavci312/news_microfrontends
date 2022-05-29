import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:team_listing/src/presentation/news_listing/cubit/home_page_cubit.dart';

class NewsSearchInput extends StatefulWidget {
  const NewsSearchInput({Key? key}) : super(key: key);

  @override
  State<NewsSearchInput> createState() => _NewsSearchInputState();
}

class _NewsSearchInputState extends State<NewsSearchInput> {
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.search),
        hintText: 'Search by title',
        border: InputBorder.none,
      ),
      controller: _controller,
      enableSuggestions: false,
      onChanged: (value) {
        context.read<HomePageCubit>().filterNews(value);
      },
    );
  }
}
