//@dart=2.9
import 'dart:io';

main(List<String> args) {
  print('Enter maximum limit');
  String input = stdin.readLineSync();
  int lim = int.parse(input);
  List fibo = [0];
  int count = 1;
  while (count < lim) {
    ////print('while il keri');
    //if (count == 4) {
    //  //print('count == 4');
    //  count = 5;
    //  continue;
    //}
    fibo.add(count);
    count = (count + 1) + (count - 1);
  }
  print('fibonacci numbers till $lim - ');
  print(fibo);
}
