//@dart=2.9
import 'dart:io';

main() {
  print('Enter number of days');
  String input = stdin.readLineSync();
  int nosd = int.parse(input);
  int nosy, nosm;
  nosy = nosd ~/ 365;
  nosd = nosd % 365;
  nosm= nosd ~/ 30;
  nosd = nosd % 30;
  print('$input is $nosy years, $nosm months and $nosd days.');
}
//collect no. of days in int
//print how many years, months, weeks & days
//provide the answer