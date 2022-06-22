//A program which calculates the areas of a square, a retangle, a triangle and a circle in dart
import 'dart:ffi';
import 'dart:io';
import 'dart:core';

const double pi = 3.1415;
void main() {
  menu();
  var op, side, side2;
  print("option:");
  op = stdin.readLineSync();
  op = int.tryParse(op);
  switch (op) {
    case 1: //Square Option
      print("Square. Inform side(m)");
      side = stdin.readLineSync();
      side = double.tryParse(side);
      print("Area mxm: ${side * side}");
      break;
    case 2: //Retangle Option
      print("Retangle. Informe sides");
      side = stdin.readLineSync();
      side2 = stdin.readLineSync();
      side = double.tryParse(side);
      side2 = double.tryParse(side2);
      print("Area mxm: ${side * side2}");
      break;
    case 3: //Triangle Option
      print("Triangle. Inform side and hight values");
      side = stdin.readLineSync();
      side2 = stdin.readLineSync();
      side = double.tryParse(side);
      side2 = double.tryParse(side2);
      print("Area mxm: ${(side * side2) / 2}");
      break;
    case 4: //Circle Option
      print("Circle. Inform radius");
      side = stdin.readLineSync();
      side = double.tryParse(side);
      print("Area mxm: ${(side * side) *pi}");
      break;
    default:
      print("Invalid Option");
      break;
  }
}

void menu() {
  print("*" + "-" * 10 + "SELECT" + "-" * 10 + "*");
  print("1.Square\n2.Rectangle\n3.Triangle\n4.Circle");
  print("*" + "-" * 13 + "-" * 13 + "*");
}
