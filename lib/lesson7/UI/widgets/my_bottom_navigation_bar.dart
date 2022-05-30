import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/first_screen.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/forth_page.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/second_page.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/third_page.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Страница 1',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Страница 2',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Страница 3',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Страница 4',
            backgroundColor: Colors.red,
          ),
        ],
        onTap: (index) async {
          changePage(index, context);
        });
  }
}

void changePage(int index, BuildContext context) {
  Widget page = const FirstScreen();
  switch (index) {
    case 0:
      page = const FirstScreen();
      break;
    case 1:
      page = const SecondPage();
      break;
    case 2:
      page = const ThirdPage();
      break;
    case 3:
      page = const ForthPage();
      break;
  }

  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}
