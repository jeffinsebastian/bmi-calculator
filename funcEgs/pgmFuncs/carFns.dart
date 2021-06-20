// @dart=2.9

import 'dart:io';
import '../models/carModel.dart';

String runMenu() {
  String choice;
  String menu;
  menu = '''
Options:
________
1: Add new Car
2: List Cars
________
q: Exit program
________
	''';
  print(menu);
	choice = stdin.readLineSync();
  return choice;
}

Car getCarDetails() {
  Car car = Car();
  print('** CAR REGISTRATION **\n');
  print('Enter name of the car');
  car.name = stdin.readLineSync();
  print('Enter year of the car');
  car.year = stdin.readLineSync();
  print('Enter model of the car');
  car.model = stdin.readLineSync();
  print('Enter color of the car');
  car.color = stdin.readLineSync();

  return car;
}

printCarDetails(Car car) {
  print('\n** ******');
  print('** name: ${car.name} **');
  print('** DOB: ${car.year} **');
  print('** color: ${car.color} **');
  print('** model: ${car.model} **');
  print('** ******>');
}