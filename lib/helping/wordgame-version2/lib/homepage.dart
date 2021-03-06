import 'package:flutter/material.dart';
import "dart:math"; //package to generate random items
import 'text_ouptput.dart';
import 'correct.dart';
import 'random_letters.dart';
import 'oxford_check.dart';


class HomePageText extends StatefulWidget {
  const HomePageText({Key? key}) : super(key: key);

  @override
  _HomePageText createState() => _HomePageText();
}

var list = ['e', 'a', 'r', 'e', 'i', 'o', 't', 'n', 's', 'l', 'c', 'u', 'd',];

final _random = Random();

var n1 = list[_random.nextInt(list.length)];
var n2 = list[_random.nextInt(list.length)];
var n3 = list[_random.nextInt(list.length)];
var checkRegex = RegExp('^(.*)($n1)(.*)($n2)(.*)($n3)(.*)\$');
var points = 0;
String userInput = '';
bool check = false;
bool wordcheck = false;

//oxdord dictionary here

void pointsCounter() {
  if (check && wordcheck == true) {
    points = points + 100;
  } else {
    points = points - 100;
  }
}


class _HomePageText extends State<HomePageText> {
//use this controller to get what the user is typing
  final _textController = TextEditingController();

//store a variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            'W O R D G A M E',
            style: TextStyle(
                color: Colors.teal[800],
                fontWeight: FontWeight.bold,
                fontSize: 25,
                letterSpacing: 4),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          EnglishLetters(),
          TextOutput(),
          CorrectPoints(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 320,
                child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                        hintText: 'What word would you suggest?',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _textController.clear();
                          },
                          icon: const Icon(Icons.clear),
                        ))),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
//button
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: MaterialButton(onPressed: () {
                          setState(() {
                            userInput = '';
                            check = false;
                            wordcheck = false;
//update the variables

                            n1 = list[_random.nextInt(list.length)];
                            n2 = list[_random.nextInt(list.length)];
                            n3 = list[_random.nextInt(list.length)];

                            pointsCounter();
                            _textController.clear();
                          });
                        },
                          color: Colors.redAccent,
                          child: const Text(
                            'Skip',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      MaterialButton(
                          onPressed: () async {
                            wordcheck = await OxfordChecking.isWordInOxfordDictionary(userInput);
                            //update the text
                            setState(() {
                              userInput = _textController.text;
                              check = checkRegex.hasMatch(userInput);
                              //update the variables
                              n1 = list[_random.nextInt(list.length)];
                              n2 = list[_random.nextInt(list.length)];
                              n3 = list[_random.nextInt(list.length)];
                              checkRegex = RegExp('^(.*)($n1)(.*)($n2)(.*)($n3)(.*)\$');

                              pointsCounter();
                              _textController.clear();
                            });
                          },
                          color: Colors.teal,
                          child: const Text(
                            'Try',
                            style: TextStyle(color: Colors.white),
                          )),

                      ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
