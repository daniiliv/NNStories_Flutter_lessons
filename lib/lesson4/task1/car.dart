class Car {
  int speed = 250;
  String name = "Audi";

  Car.createSpecifiedCar(this.speed, this.name); // Именованный конструктор

  String toPrint() {
    return "Car $name, speed is $speed";
  }
}
