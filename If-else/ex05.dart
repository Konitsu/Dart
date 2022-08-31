import 'dart:io';

import '../InputClass.dart';

void main() {
  var message;

  message = ("Insira a nota da primeira avaliação =>");
  var firstAvaliation = readDouble(message);

  message = ("Agora, insira a nota da segunda avaliação =>");
  var secondAvaliation = readDouble(message);

  message = ("Por fim, insira a nota da última avaliação =>");
  var finalAvaliation = readDouble(message);

  var finalGrade = (firstAvaliation + secondAvaliation + finalAvaliation) / 3;

  var gradeA = finalGrade >= 9;
  var gradeB = finalGrade >= 7.5 && finalGrade < 9;
  var gradeC = finalGrade >= 6.5 && finalGrade < 7.5;
  var gradeD = finalGrade < 6;

  var sign;
  if (gradeA) {
    sign = "A";
  } else if (gradeB) {
    sign = "B";
  } else if (gradeC) {
    sign = "C";
  } else if (gradeD) {
    sign = "D";
  }

  print("A nota final do aluno foi $sign!");
}
