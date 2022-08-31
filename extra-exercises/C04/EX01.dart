/*
Faça um algoritmo que solicite ao usuário o seu primeiro
nome, seu nome do meio, seu sobrenome, sua idade e depois
imprima todos estes dados de acordo com o layout abaixo:

Sobrenome, PrimeiroNome SegundoNome
Idade: 99 anos.
*/

import 'dart:io';

void main() {
  print("Insira seu primeiro nome: ");
  String firstName = stdin.readLineSync()!;

  print("Insira agora seu nome do meio: ");
  String middleName = stdin.readLineSync()!;

  print("Agora, insira seu sobrenome: ");
  String lastname = stdin.readLineSync()!;

  print("Por fim, insira sua idade: ");
  int age = int.parse(stdin.readLineSync()!);

  print("$lastname, $firstName $middleName\nIdade: $age anos.");
}
