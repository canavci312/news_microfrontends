import 'package:flutter/material.dart';
import 'package:team_supportive/src/domain/global_news/news.dart';


class NewsTile extends StatelessWidget {
  final News _news;
  const NewsTile(this._news, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_news.title),
      leading: Image.network(
        _news.urlToImage,
        errorBuilder: (context, error, stackTrace) =>
           Image(image: AssetImage('assets/image_unavailable.png',package: 'team_supportive')),
      ),
    );
  }
}
