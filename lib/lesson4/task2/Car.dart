class Car {
  int speed = 250;
  String name = "Audi";

  Car();

  Car.createSlowCar(this.speed, this.name); // Именованный конструктор

  void toPrint() {
    print("Car $name, speed is $speed");
  }
}

void registered({required int speed, required String name}) {
  Car car = Car.createSlowCar(speed, name); // Вызов именованного конструктора
  car.toPrint();
}

void registered2({required int speed, required String name}) {
  Car car = Car.createSlowCar(speed, name); // Вызов именованного конструктора
  car.toPrint();

  Car car2 = Car.createSlowCar(speed, name);
  car2.toPrint();
}

void registered3({required int speed, required String name}) {
  Car car = Car.createSlowCar(speed, name); // Вызов именованного конструктора
  car.toPrint();
  car.toPrint();
}

void registered4({required int speed, required String name}) {
  Car car = Car.createSlowCar(speed, name); // Вызов именованного конструктора
  car.toPrint();

  Car car2 = Car();
  car2.toPrint();
}

// Каскады.
void registered5({required int speed, required String name}) {
  Car()
    ..name = name
    ..speed = speed
    ..toPrint();

  Car()
    ..name = name
    ..speed = speed
    ..toPrint();
}
