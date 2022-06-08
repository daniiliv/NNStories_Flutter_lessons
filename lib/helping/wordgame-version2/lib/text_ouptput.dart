import 'package:flutter/material.dart';
import 'homepage.dart';

class TextOutput extends StatelessWidget {
  const TextOutput({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return Text(userInput,
     style: TextStyle(fontSize: 60, color: Colors.teal),
   );
  }
}
