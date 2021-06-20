//@dart=2.9

import 'dart:io';

String __CALCULATOR_MENU__ = '''
***********************
**  AREA CALCULATOR  **
***********************
* 1. Circle           *
* 2. Triangle         *
* 3. Rectangle        *
***********************
''';
main(List<String> args) {
  // rectangle
  // triangle
  // circle

  print(__CALCULATOR_MENU__);
  String choice = stdin.readLineSync();
  if (choice == '1') {
    // radius tharan para
    print('Enter radius in cms:');
    // input medhik
    String input = stdin.readLineSync();
    // convert to int
    double rad = double.tryParse(input);
    // area undaku
    double area = 3.14 * rad * rad;
    // print output
    print('Area of circe: $area');
    //
  } else if (choice == '2') {
    print('Enter length in cms');
    String input = stdin.readLineSync();
    double length = double.tryParse(input);
    print('Enter height in cms');
    input = stdin.readLineSync();
    double height = double.tryParse(input);
    double area = 1 / 2 * length * height;
    print('area of triangle = $area');
  } else if (choice == '3') {
    print('Enter length in cms');
    String input = stdin.readLineSync();
    double length = double.tryParse(input);
    print('Enter breadth in cms');
    input = stdin.readLineSync();
    double breadth = double.tryParse(input);
    double area = length * breadth;
    print('area of rectangle = $area');
  } else {
    print('Invalid');
  }
}

sayMyName() {
  print('Jeffin');
}
