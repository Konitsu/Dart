import 'dart:io';

import '../InputClass.dart';

void main() {
  var message;

  message = ("Insira a primeira nota =>");
  var firstAvaliation = readInt(message);

  message = ("Insira a segunda nota =>");
  var finalAvaliation = readInt(message);

  var grade = (firstAvaliation + finalAvaliation) / 2;

  print(grade >= 6 ? "Aluno aprovado!\nNota final $grade" : "Aluno reprovado!\nNota final $grade");
}
