//@dart=2.9

import 'dart:io';

void main() {
  // ~/ -> int
  //int qsn = 153;
  //// oro digit
  //double ans;
  //var rem = qsn % 10;
  //ans = qsn / 10;
  //var nxg = ans - rem / 10;
  //print(ans);
  //print(rem);
  //print(nxg);
  print('Enter a number and press ENTER');
  String qsnString = stdin.readLineSync();
  int qsn = int.tryParse(qsnString);
  int dontchangethis = qsn;
  int count = 0;
  List<int> digits = [];

  // prepare digits
  while (qsn > 0) {
    double temp = qsn / 10;
    int rem = qsn % 10;
    digits.add(rem);
    qsn = temp.toInt();
    count++;
  }

  int ans = 0;

  // sum of all digits
  //print('ans:$ans,digits:$digits');
  //for (int i = 0; i < digits.length; i++) {
  //  ans = ans + digits[i];
  //}
  //print('sum of all digits = $ans');
  // digits ans = 0
  // oro digit -> ans = ans + digit

  // raise digits to the power of the number of digits
  for (int i = 0; i < count; i++) {
    //print(digits[i]);
    int powerfuldigit = 1;
    for (int j = 0; j < count; j++) {
      powerfuldigit *= digits[i];
    }
    ans += powerfuldigit;
  }
  print('$count, $ans');

  if (dontchangethis == ans) {
    print('$dontchangethis is an armstrong number');
  } else {
    print('$dontchangethis is not an armstrong number');
  }


  // persist pgm
  print('Press ENTER to exit.');
  stdin.readLineSync();
}


// for loop -> iterate