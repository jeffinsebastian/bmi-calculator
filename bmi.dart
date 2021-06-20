// @dart=2.9
/*// SPECIFICATIONS
1. name
2. height
3. weight
4. calculate bmi
5. store bmi
6. display all previous bmis
7. provide option to export as csv or text files

//calculate BMI

  bmi=kg/m2
  25.0 or more is unhealthy
  healthy 18.5 to 24.9
  only applies to age between 18-65

*/

import 'dart:io';

List<String> names = [];
List<double> heights = [];
List<double> weights = [];
List<double> bmis = [];

main() {
  // show welcome screen
  print('BMI Calculator');
  bool repeate = true;
  while (repeate) {
    bool continueAgain = getUserDetails();
    if (!continueAgain) {
      repeate = false;
      printExportOptions();
    }
  }

  // persist pgm
  print('Press ENTER to exit.');
  stdin.readLineSync();
}

bool getUserDetails() {
  String input;
  double height, weight, bmi;
  print('What is your name?');
  input = stdin.readLineSync();
  names.add(input ?? '');
  print('Enter height in meters');
  input = stdin.readLineSync();
  height = (double.tryParse('$input') ?? 0.0);
  print('Enter weight in Kg');
  input = stdin.readLineSync();
  weight = (double.tryParse('$input') ?? 0.0);
  bmi = (weight / (height * height));
  heights.add(height);
  weights.add(weight);
  bmis.add(bmi);
  print('add new patient (Y/n):');
  input = stdin.readLineSync();
  if (input == 'Y' || input == "y" || input == '') {
    return true;
  } else {
    return false;
  }
}

printExportOptions() {
  int choice;
  String input,
      exporttable = '''
Options:
________
1.Display Table
2.Export txt file.
3.Export csv file.
''';

  clearScreen();
  print(exporttable);
  input = stdin.readLineSync() ?? '';
  choice = int.tryParse(input ?? -1);
  if (choice == 1) {
    printTable();
  } else if (choice == 2) {
    exportTextFile();
  } else if (choice == 3) {
    exportCsvFile();
  } else {
    print('Invalid option!');
  }
}

exportCsvFile() async {
  String csvData = generateCsv();
  await File('bmi.csv').writeAsStringSync(csvData);
}

exportTextFile() async {
  String tableData = generateTable();
  await File('bmi.txt').writeAsString(tableData);
}

printTable() {
  clearScreen();
  String table = generateTable();
  print(table);
}

generateCsv() {
  String values = 'Name,Height,Weight,BMI\n';
  for (var i = 0; i < names.length; i++) {
    values = values +
        '${names[i]},${heights[i]},${weights[i]},${bmis[i].toStringAsFixed(2)}\n';
  }
  return values;
}

generateTable() {
  String table = '|-----------------------|\n';
  table += '|Name\tBMI \tResult\t|\n';
  table += '|-----------------------|\n';
  for (var i = 0; i < names.length; i++) {
    //String healthStatus = (bmis[i] < 18 || bmis[i] > 25) ? 'U' : 'H';
    var healthStatus = '';
    if (bmis[i] < 18 || bmis[i] > 25) {
      healthStatus = 'U';
    } else {
      healthStatus = 'H';
    }
    table = table +
        '|${names[i]}\t${bmis[i].toStringAsFixed(2)}\t$healthStatus\t|\n';
  }
  table += '|-----------------------|';
  return table;
}

clearScreen() {
  if (Platform.isWindows) {
    // not tested, I don't have Windows
    // may not to work because 'cls' is an internal command of the Windows shell
    // not an executeable
    print(Process.runSync("cls", [], runInShell: true).stdout);
  } else {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}
