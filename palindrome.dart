//@dart=2.9

import 'dart:io';

main(List<String> args) {

  // goal: swap a & b

                  //  a  b
  int a = 3;      //  3  null
  int b = 4;      //  3  4
  //a + b = a;
  a = a + b;      //  7  4
  b = a - b;      //  7  3
  a = a - b;      //  4  3


  //return;
 List numbers = [
    1,
    2,
    3,
    4,
  ];
  print(numbers.reversed.toList());
  var mapJeff;
  print(mapJeff['age']);
  print('${a++}');
  print('$a');
  List newlist = [
    1,
    2,
    ...numbers,
    5,
    6,
    7,
  ];
  double newval = mapJeff['age'] as double;
  numbers == [] ? print('aanu mwonuse') : print('alla mwonuse');
  print(newlist);
}

// ++a -> a = a+1;
// List -> []