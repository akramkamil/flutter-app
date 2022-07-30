import 'package:flutter/material.dart';
import 'package:news_application/models/news.dart';

class NewsTile extends StatefulWidget {
  const NewsTile({Key? key, required this.news}) : super(key: key);
  final News news;

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          widget.news.imgUrl,
        ),
        Text(widget.news.title),
        Text(
          widget.news.newsText,
          style: const TextStyle(fontSize: 10, overflow: TextOverflow.ellipsis),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    widget.news.isFavorite = !widget.news.isFavorite;
                  });
                },
                icon: widget.news.isFavorite
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_outline)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.share_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.delete_outlined))
          ],
        )
      ],
    );
  }
}
