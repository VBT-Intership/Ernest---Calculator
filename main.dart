import 'dart:io';
import 'calculator.dart';

main() {
  Calculator calculator = Calculator();

  String repeat;

  do {
    calculator.selectNumbers();
    calculator.selectOperation();
    calculator.showResult();

    print("Would you like to try again? y/n");
    repeat = stdin.readLineSync();
  } while (repeat == "yes" || repeat == "y");
  print("Thanks for using this calculator, have a nice day!");
}
