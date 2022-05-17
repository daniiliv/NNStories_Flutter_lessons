class Car {
  int speed = 250;
  String name = "Audi";

  Car.createSpecifiedCar(this.speed, this.name); // Именованный конструктор

  void toPrint() {
    print("Car $name, speed is $speed");
  }
}
