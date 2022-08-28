/*
Exercício 04
Escreva um programa para ler o número total de eleitores de um município, o número de votos
brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa em relação ao 
total de eleitores.
*/

import 'dart:io';

void main() {
  print("Insira a quantidade de eleitores deste município: ");
  int voters = int.parse(stdin.readLineSync()!);
  PercentageOfVotes(voters);
}

void PercentageOfVotes(voters) {
  print("Quantos votaram em branco? ->");
  int blankVotes = int.parse(stdin.readLineSync()!);
  double percentageOfBlankVotes = (blankVotes * 100) / voters;

  print("Quantos votaram nulo? ->");
  int nullVotes = int.parse(stdin.readLineSync()!);
  double percentageOfNullVotes = (nullVotes * 100) / voters;

  print("Quantos votaram em algum candidato? ->");
  int validVotes = int.parse(stdin.readLineSync()!);
  double percentageOfValidVotes = (validVotes * 100) / voters;

  print(
      "Total de eleitores => $voters\nPercentual de votos em branco => $percentageOfBlankVotes%\nPercentual de votos nulos => $percentageOfNullVotes%\nPercentual de votos válidos => $percentageOfValidVotes%");
}
