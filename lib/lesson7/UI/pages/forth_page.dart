import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/profile_page.dart';
import 'package:nnstories_lessons/lesson7/UI/widgets/my_scaffold.dart';

class ForthPage extends StatelessWidget {
  const ForthPage({Key? key}) : super(key: key);

  static const String title = "Страница 4";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    return const ProfilePage();
  }
}
