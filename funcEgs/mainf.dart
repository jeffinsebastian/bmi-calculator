// @dart=2.9

// var a = 2;
// var b = 3;
// var c = a + b;

// imports
import 'dart:io';

import './pgmFuncs/utilityFunctions.dart';

main() {
  //String userName;
  String input;
  int a, b, result;
  //userName = stdin.readLineSync();
  //print('pgm started\n');
  //welcomeUser(gender: 'm', name: 'jeff', age: 21);
  print('Enter first number');
  input = stdin.readLineSync();
  a = (int.tryParse('$input') ?? 0);
  print('Enter second number');
  input = stdin.readLineSync();
  b = (int.tryParse('$input') ?? 0);

  result = (addTwoNums(a, b));

  // -----------------!
  print('sum: $result');
  //welcomeUser(2,userName, gender: 'm');
  //welcomeUser(4, 'lkjkl');
  //welcomeUser(5,'Jomon');
  //welcomeUser(7, 'jkhjk');

  print('\npgm ended');
}

//addTwoNums(
//  int num1,
//  int num2
//) {}

int addTwoNumsFATARROW(int num1, int num2) => num1 + num2;

int addTwoNums(int num1, int num2) {
  int sum = num1 + num2;
  return sum;
  //return num1 + num2;
}


// https://www.tutorialspoint.com/dart_programming/dart_programming_functions.htm


/*
// basic function
functionName() {}

// parameterised function
functionName(
  // function parameters
  parameterType  parameterName
) {}

// optional parameters
// enclosed in square brackets

// named parameters
// enclosed in curly braces

*/