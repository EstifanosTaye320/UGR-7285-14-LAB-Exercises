class Car {
  const Car(this.brand, this.model, this.year);
  final String brand;
  final String model;
  final String year;

  void startCar() {
    print('Vroom Vroom');
  }
}

void main() {
  Car fordCar = Car("Brand", 'model', 'year');
  print(fordCar.brand);
  print(fordCar.model);
  print(fordCar.year);
}
