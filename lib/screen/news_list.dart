import 'package:flutter/material.dart';
import 'package:news_application/providers/news_provider.dart';
import 'package:news_application/screen/news_tile.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Newsprovider newsprovider = Newsprovider();
    return SingleChildScrollView(
      child: Column(
        children: [
          ...newsprovider.allNews.map((e) => NewsTile(news: e)).toList()
        ],
      ),
    );
  }
}
