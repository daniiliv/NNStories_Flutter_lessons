class Car {
  int speed = 250;
  String name = "Audi";

  Car.createSlowCar(this.speed, this.name); // Именованный конструктор

  void toPrint() {
    print("Car $name, speed is $speed");
  }
}

void registered({required speed, required name}) {
  Car car = Car.createSlowCar(speed, name); // Вызов именованного конструктора
  car.toPrint();
}

void registered2({required speed, required name}) {
  Car car = Car.createSlowCar(speed, name); // Вызов именованного конструктора
  car.toPrint();

  Car car2 = Car.createSlowCar(speed, name);
  car2.toPrint();
}

void registered3({required speed, required name}) {
  Car car = Car.createSlowCar(speed, name); // Вызов именованного конструктора
  car.toPrint();
  car.toPrint();
}
