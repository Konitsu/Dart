import 'dart:io';

import '../InputClass.dart';

void main() {
  var message;
  var idealWeight;

  print("Insira seus dados:");
  message = ("Nome =>");
  var name = readString(message);

  message = ("Altura =>");
  var heigth = readDouble(message);

  message = ("Sexo =>");
  var gener = readString(message);

  if (gener.toUpperCase == "M") {
    idealWeight = (72.7 * heigth) - 58;
  } else{
     idealWeight = (62.1 * heigth) - 44.7;
  }
  print("$name seu peso ideal é $idealWeight kg.");
}
