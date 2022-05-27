import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson7/UI/widgets/custom_top.dart';

import '../widgets/my_scaffold.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const String title = "Страница 2";

  static const String avatarImageURL =
      "https://previews.123rf.com/images/yupiramos/yupiramos1607/yupiramos160716613/60273141-happy-funny-cartoon-face-icon-vector-illustation.jpg";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.topCenter,
        child: TopBar(),
      ),
      Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(avatarImageURL),
              child: Align(
                alignment: Alignment.bottomCenter,
              ),
              radius: 40,
            ),
            const Text("Some text"),
            const Spacer(),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text('Card title 1'),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: const Color(0xFF6200EE), // foreground
                        ),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('ACTION 1'),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: const Color(0xFF6200EE), // foreground
                        ),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('ACTION 2'),
                      ),
                    ],
                  ),
                  Image.network('https://picsum.photos/200/100'),
                ],
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
