import 'package:flutter/material.dart';
import 'homepage.dart';

class EnglishLetters extends StatelessWidget {
  const EnglishLetters({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRect(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.teal[400],
            child: Center(
                child: Text(
                  n1,
                  style: const TextStyle(fontSize: 80, color: Colors.white),
                ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.teal[400],
            child: Center(
              child: Text(
                n2,
                style: const TextStyle(fontSize: 80, color: Colors.white),
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.teal[400],
          child: Center(
            child: Text(
              n3,
              style: const TextStyle(fontSize: 80, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

