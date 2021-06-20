// @dart=2.9

import 'models/carModel.dart';
import 'pgmFuncs/carFns.dart';

mainb() {
  Bike bike;
  bike = Bike(
      name: 'splendor',
      model: '2020',
      color: 'green',
      msg: 'kljhkjhjkhhjhjkhjghjgghgtpuopkklhjityr');
  bike.startBike();
  printBikeDeets(bike);
  bike.off();
  bike.chaneName('duke');
  printBikeDeets(bike);
  bike.sell();
}

class Bike {
  Bike({
    this.name,
    this.model,
    this.color,
    String msg,
  }) {
    print('${this.name} bought - $msg');
    this.name = msg;
  }

  String name, model, color;
  startBike() {
    print('bike ${this.name} started');
  }

  chaneName(String name) => this.name = name;

  off() {
    print('${this.name} -> off');
  }

  sell() {
    print('${this.name} -> sold');
  }
}

printBikeDeets(Bike bike) {
  print('\n** ******');
  print('** name: ${bike.name} **');
  print('** color: ${bike.color} **');
  print('** model: ${bike.model} **');
  print('** ******>');
}

main() {
  //print('chammi poi');
  //return 'poda';
  bool runAgain = true;
  List<Car> cars = [];
  while (runAgain) {
    String option = runMenu();

    switch (option) {
      //switch (runMenu()) {
      case '1':
        cars.add(getCarDetails());
        break;

      case '2':
        for (int i = 0; i < cars.length; i++) {
          printCarDetails(cars[i]);
        }
        break;

      case 'q':
        runAgain = false;
        break;
      default:
        print('Invalid option');
    }
  }
}

// https://www.tutorialspoint.com/dart_programming/dart_programming_classes.htm






// !!!!!!!!!!!!!!!!!!!!!!1

//main() {
//  //Bike bike1 = new Bike();
//  //bike1.color = 'green';
//  //print(bike1.color);

//  //Car car1 = new Car();
//  //print('** CAR REGISTRATION **\n');
//  //print('Enter name of the car');
//  //car1.name = stdin.readLineSync();
//  //print('Enter year of the car');
//  //car1.year = stdin.readLineSync();
//  //print('Enter model of the car');
//  //car1.model = stdin.readLineSync();
//  //print('Enter color of the car');
//  //car1.color = stdin.readLineSync();

//  ////
//  //printCarDetails(car1);
//}

//printCarDetails(Car car) {
//  print('\n****');
//  print('** name: ${car.name} **');
//  print('** DOB: ${car.year} **');
//  print('** color: ${car.color} **');
//  print('** model: ${car.model} **');
//  print('** >');
//}

//class Bike {
//  String name = 'bajaj', color = 'red', model = 'cd delux', year = '1999';
//}

//class Student {
//  String name;
//  String rollno;
//  int age;
//  int cls;
//}
