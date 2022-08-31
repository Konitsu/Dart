import 'dart:io';

import '../InputClass.dart';

void main() {
  var message;
  const atualYear = 2022;

  message = ("Digite o número de matrícula =>");
  var registration = readInt(message);

  message = ("Digite o ano do nascimento =>");
  var yearBirth = readInt(message);

  message = ("Digite o ano em que ingressou na sua primeira empresa =>");
  var yearFirstJob = readInt(message);

  var age = atualYear - yearBirth;
  var timeWorked = atualYear - yearFirstJob;

  print(
      "Funcionário $registration, têm $age anos e trabalhou durante $timeWorked anos!");
  print(age >= 65 || timeWorked >= 30 || age >= 60 && timeWorked >= 25
      ? "Requerer aposentadoria"
      : "Não requerer");
}
