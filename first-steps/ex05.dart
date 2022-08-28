/*
Exercício 05
Escreva um programa para ler uma temperatura em graus Fahrenheit, calcular e escrever o valor
correspondente em graus Celsius (baseado na fórmula abaixo):
  C / 5 = (F - 32) / 9 
  Observação: Para testar se a sua resposta está correta saiba que 100ºC = 212F
*/

import 'dart:io';

void main() {
  print("Insira a temperatura em Fahrenheit: ");
  double Fahrenheit = double.parse(stdin.readLineSync()!);

  double FahrenheitToCelsius = ConvertFahrenheitToCelsius(Fahrenheit);
  print("$Fahrenheit\F = $FahrenheitToCelsius\C");
}

double ConvertFahrenheitToCelsius(Fahrenheit) {
  double Celsius;
  Celsius = ((Fahrenheit - 32) * 5) / 9;

  return Celsius;
}
