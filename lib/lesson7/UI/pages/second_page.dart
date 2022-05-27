import 'package:flutter/material.dart';

import '../widgets/my_scaffold.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const String title = "Страница 2";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    return const Center(
      child: Text(title),
    );
  }
}
