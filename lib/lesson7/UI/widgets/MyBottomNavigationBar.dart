import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/first_screen.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/forth_page.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/second_page.dart';
import 'package:nnstories_lessons/lesson7/UI/pages/third_page.dart';

class MyBottomNavigationBar extends StatelessWidget {
  BuildContext _context;

  MyBottomNavigationBar(this._context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      onTap: changePage,
    );
  }

  void changePage(int index) {
    switch (index) {
      case 0:
        navigateToPage(const FirstScreen());
        break;
      case 1:
        navigateToPage(const SecondPage());
        break;
      case 2:
        navigateToPage(const ThirdPage());
        break;
      case 3:
        navigateToPage(const ForthPage());
        break;
    }
  }

  void navigateToPage(Widget page) {
    Navigator.of(_context)
        .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }
}
