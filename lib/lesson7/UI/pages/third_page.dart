import 'package:flutter/material.dart';

import '../widgets/my_scaffold.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  static const String title = "Страница 3";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        const Text(title),
        Divider(),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                          )),
                      Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          )),
                      Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          )),
                    ],
                  ),
                  const Divider(),
                ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
