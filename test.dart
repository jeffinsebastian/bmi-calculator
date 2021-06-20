//@dart=2.9
import 'dart:io';

void main() {
  int i = 0;
  print('enter sentense to be reversed');
  String jeff = stdin.readLineSync();
  i = jeff.length - 1;
  String reversedString = '';
  for (; i >= 0;) {
    // print(jeff[i]);
    // reversedString = jeff[i];
    reversedString = reversedString + jeff[i];
    // print('rv: $reversedString, i: $i, jf: ${jeff[i]}');
    i--;
  }
  // print('reversed string: $reversedString');
  // jeff
  // rever
  if (jeff == reversedString) {
    print('$jeff is a palindrome');
  } else {
    print('$jeff is not a palindrome');
  }

  
  // persist pgm
  print('Press ENTER to exit.');
  stdin.readLineSync();
}
