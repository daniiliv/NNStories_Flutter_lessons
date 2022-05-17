class Car {
  int speed = 250;
  String name = "Audi";

  Car.createSlowCar(this.speed, this.name); // Именованный конструктор

  void toPrint() {
    print("Car $name, speed is $speed");
  }
}

void registered({int speed = 150, String name = "Volga"}) {
  Car car = Car.createSlowCar(speed, name); // Вызов именованного конструктора
  car.toPrint();
}
