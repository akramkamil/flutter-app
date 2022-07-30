import 'package:flutter/material.dart';
import 'package:news_application/screen/screen_news.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'News App',
      home: NewsScreen(),
    );
  }
}

