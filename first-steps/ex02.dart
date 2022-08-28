/*
Exercício 02
Faça um programa que leia a idade de uma pessoa expressa em anos, meses e dias e escreva a 
idade dessa pessoa expressa apenas em dias. Considerar ano com 365 dias e mês com 30 dias.
*/

import 'dart:io';

void main() {
  int ageInDays = calculateAgeInDays();

  print("Sua idade total em dias é $ageInDays");
}

int calculateAgeInDays() {
  print("Insira quantos anos você tem: ");
  int years = int.parse(stdin.readLineSync()!);

  print("Insira quantos meses você tem: ");
  int months = int.parse(stdin.readLineSync()!);

  print("Insira quantos dias você tem: ");
  int days = int.parse(stdin.readLineSync()!);

  int idadeTotal = (years * 365) + (months * 30) + days;
  return idadeTotal;
}
