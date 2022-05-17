import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson4/task3/car.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter lesson 4 task 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String testResult = "";

  void _updateResult() {
    String newValue = registeredAllObjects();

    setState(() {
      testResult = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              testResult,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateResult,
        tooltip: 'Update result',
        child: const Icon(Icons.update),
      ),
    );
  }
}

String registered({int speed = 150, String name = "Volga"}) {
  Car car = Car.createSlowCar(speed, name); // Вызов именованного конструктора
  return car.toPrint();
}

String registeredAllObjects() {
  String result = "";
  String divider = "----\n";

  result = registered(speed: 230, name: "Skoda");

  result = result + divider;

  result = result + registered(name: "VAZ");

  result = result + divider;

  result = result + registered();

  return result;
}