import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson7/models/News.dart';

class NewsWidget extends StatelessWidget {
  final News newsEntry;

  const NewsWidget({Key? key, required this.newsEntry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: (width > 420) ? width * 0.5 : width * 0.9,
      height: 300,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 1.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(newsEntry.title),
          Expanded(
              child: Card(
            child: Image.network(newsEntry.photoURL),
          )),
          Text(newsEntry.text),
        ],
      ),
    );
  }
}
