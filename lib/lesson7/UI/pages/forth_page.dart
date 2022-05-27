import 'package:flutter/material.dart';
import '../widgets/my_scaffold.dart';

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
    return const Center(
      child: Text(title),
    );
  }
}
