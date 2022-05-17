import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson4/task2/car.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter lesson 4 task 2'),
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
    String newValue = registered();

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

String registered() {
  String result = "";
  String divider = "----\n";

  // Способ 1.
  result = registered1(speed: 100, name: "VAZ");
  result = result + registered1(speed: 100, name: "VAZ");

  result = result + divider;

  // Способ 2.
  result = result + registered2(speed: 100, name: "VAZ");

  result = result + divider;

  // Способ 3.
  result = result + registered3(speed: 100, name: "VAZ");

  result = result + divider;

  // Способ 4.
  result = result + registered4(speed: 250, name: "Audi");

  result = result + divider;

  // Способ 5.
  result = result + registered5(speed: 300, name: "Porsche");

  return result;
}

String registered1({required int speed, required String name}) {
  String result = "";

  Car car =
      Car.createSpecifiedCar(speed, name); // Вызов именованного конструктора
  result = car.toPrint();

  return result;
}

String registered2({required int speed, required String name}) {
  String result = "";

  Car car =
      Car.createSpecifiedCar(speed, name); // Вызов именованного конструктора
  result = car.toPrint();

  Car car2 = Car.createSpecifiedCar(speed, name);
  result = result + car2.toPrint();

  return result;
}

String registered3({required int speed, required String name}) {
  String result = "";

  Car car =
      Car.createSpecifiedCar(speed, name); // Вызов именованного конструктора
  result = car.toPrint();
  result = result + car.toPrint();

  return result;
}

String registered4({required int speed, required String name}) {
  String result = "";

  Car car =
      Car.createSpecifiedCar(speed, name); // Вызов именованного конструктора
  result = car.toPrint();

  Car car2 = Car();
  result = result + car2.toPrint();

  return result;
}

// Каскады.
String registered5({required int speed, required String name}) {
  String result = "";

  Car car = Car()
    ..name = name
    ..speed = speed;
  result = car.toPrint();

  Car car2 = Car()
    ..name = name
    ..speed = speed;
  result = result + car2.toPrint();

  return result;
}
