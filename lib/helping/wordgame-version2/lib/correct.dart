import 'package:flutter/material.dart';
import 'homepage.dart';

class CorrectPoints extends StatelessWidget {
  const CorrectPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: check && wordcheck
            ? Text('correct',
            style: TextStyle(
                fontSize: 35, color: Colors.greenAccent[400]))
            : const Text('wrong',
        style: TextStyle(fontSize: 35, color: Colors.redAccent),
          ),
        ),
        Text(
          'points: $points',
          style: const TextStyle(fontSize: 30, color: Colors.teal),
        ),
      ],
    );
  }
}
