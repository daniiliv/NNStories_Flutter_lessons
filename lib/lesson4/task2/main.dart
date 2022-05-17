import 'package:nnstories_lessons/lesson4/task2/Car.dart';

void main() {
  // Способ 1.
  registered(speed: 100, name: "VAZ");
  registered(speed: 100, name: "VAZ");

  print("----");

  // Способ 2.
  registered2(speed: 100, name: "VAZ");

  print("----");

  // Способ 3.
  registered3(speed: 100, name: "VAZ");

  print("----");

  // Способ 4.
  registered3(speed: 100, name: "Volvo");
}
