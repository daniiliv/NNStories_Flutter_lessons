import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson7/UI/widgets/my_scaffold.dart';
import 'package:nnstories_lessons/lesson7/UI/widgets/news_widget.dart';
import 'package:nnstories_lessons/lesson7/models/news.dart';

class FirstScreen extends StatelessWidget {
  static const String title = "Страница 1";

  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    int numOfNews = 15;

    return ListView.builder(
        itemCount: numOfNews,
        itemBuilder: (BuildContext inBuildContext, int inIndex) {
          News newsEntry = News(
              title: "Новость $inIndex",
              text: "Какой-то текст $inIndex",
              id: inIndex.toString(),
              photoURL: "https://picsum.photos/200");
          return NewsWidget(newsEntry: newsEntry);
        });
  }
}
