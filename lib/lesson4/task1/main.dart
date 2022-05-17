import 'package:nnstories_lessons/lesson4/task1/car.dart';

void main() {
  registered(speed: 100, name: "VAZ");
}

void registered({required int speed, required String name}) {
  Car car = Car.createSpecifiedCar(speed, name); // Вызов именованного конструктора
  car.toPrint();
}