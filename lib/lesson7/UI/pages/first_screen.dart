import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson7/UI/widgets/my_scaffold.dart';
import 'package:nnstories_lessons/lesson7/UI/widgets/news_widget.dart';

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
    return ListView(
      children: const [
        NewsWidget(),
        NewsWidget(),
        NewsWidget(),
      ],
    );
  }
}
