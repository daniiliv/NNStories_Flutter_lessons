import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/first_screen.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/forsth_page.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/second_page.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/third_page.dart';

Widget buildMenu(BuildContext context, {width = 200}) {
  return Container(
    width: width,
    color: Colors.redAccent,
    child: Column(
      children: [
        const SizedBox(
          height: 70,
        ),
        ListTile(
          title: const Text("Страница1"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return const FirstScreen();
            }));
          },
        ),
        ListTile(
          title: const Text("Страница2"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return const SecondPage();
            }));
          },
        ),
        ListTile(
          title: const Text("Страница3"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return const ThirdPage();
            }));
          },
        ),
        ListTile(
          title: const Text("Страница4"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return const FourthPage();
            }));
          },
        ),
      ],
    ),
  );
}
