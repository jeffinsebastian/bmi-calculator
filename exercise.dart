//@dart=2.9
import 'dart:io';

main() {
  // variable declaration
  int treeHeight = 0;
  String input;
  

  // get tree height
  print('Enter tree height');
  input = stdin.readLineSync();

  // convert string to int
  treeHeight = int.tryParse(input) ?? 0;
  //print(treeHeight);

  // for the number of tree height
  for (var i = 1; i <= treeHeight; i++) {
    //print('${star * i}');
    print('*' * i);
  }

  //var count = 1;
  //var star = '*';
  //for (var i = 0; i < count; i++) {
  //  print(star);
  //}
  //for (var j = 0; j < count; j++) {
  //  print(star + star);
  //}
  //for (var k = 0; k < count; k++) {
  //  print(star + star + star);
  //}
  //for (var l = 0; l < count; l++) {
  //  print(star + star + star + star);
  //}
}
