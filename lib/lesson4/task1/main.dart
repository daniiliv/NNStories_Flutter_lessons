import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson4/task1/car.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter lesson 4 task 1'),
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
    String newValue = registered(speed: 100, name: "VAZ");

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

String registered({required int speed, required String name}) {
  Car car = Car.createSpecifiedCar(speed, name); // Вызов именованного конструктора
  return car.toPrint();
}