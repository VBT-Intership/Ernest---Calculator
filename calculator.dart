import 'dart:io';

class Calculator {
  int firstNumber;
  int secondNumber;
  int operation;
  int result;

  int sum(int a, int b) {
    return a + b;
  }

  int difference(int a, int b) {
    return a - b;
  }

  int multiply(int a, int b) {
    return a * b;
  }

  double divide(int a, int b) {
    return a / b;
  }

  void selectNumbers() {
    print("type in the first number: ");
    firstNumber = int.parse(stdin.readLineSync());
    print("type in the second number: ");
    secondNumber = int.parse(stdin.readLineSync());
  }

  void selectOperation() {
    print("-----------------------");
    do {
      print(
          "Your numbers are ${firstNumber} and ${secondNumber}, please select the operation to complete by typing the number next to it:\n----------------------- \n1 for sum\n2 for difference\n3 for multiplication\n4 for division");
      operation = int.parse(stdin.readLineSync());

      switch (operation) {
        case 1:
          result = sum(firstNumber, secondNumber);
          break;
        case 2:
          result = difference(firstNumber, secondNumber);
          break;
        case 3:
          result = multiply(firstNumber, secondNumber);
          break;
        case 4:
          result = divide(firstNumber, secondNumber).toInt();
          break;
        default:
          print(
              "-----You can only choose numbers between 1 and 4, try again!-----");
      }
    } while (operation > 4 || operation < 1);
  }

  void showResult() {
    print("The result is ${result}.");
  }
}
