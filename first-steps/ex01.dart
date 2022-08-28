/* Exercício 01
Escreva um programa para ler as dimensões de um retângulo (base e altura), calcular e escrever a
área do retângulo.
*/

import 'dart:io';

void main() {
  double triangleArea = calculatesArea();

  print("A área do triângulo é $triangleArea");
}

double calculatesArea() {
  print("Digite a base: ");
  int base = int.parse(stdin.readLineSync()!);

  print("Agora, digite a altura: ");
  int heigth = int.parse(stdin.readLineSync()!);

  double area = (base * heigth) / 2;
  return area;
}
