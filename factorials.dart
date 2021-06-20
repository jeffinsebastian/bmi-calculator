//@dart=2.9
import 'dart:io';

void main() {
  print('Enter a number');
  String num = stdin.readLineSync();
  int numb = int.parse(num);
  var fact = 1;
  for (var i = numb; i >= 1; i--) {
    fact =fact*i;
  }
  print(fact);
}
