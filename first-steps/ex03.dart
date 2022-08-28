/*
Exercício 03
Um carro novo ao consumidor é a soma do custo de fábrica com a porcentagem do
distribuidor e dos impostos (aplicados ao custo de fábrica). Supondo que o percentual do 
distribuidor seja de 28% e os impostos de 45%, escrever um programa para ler o custo de fábrica 
de um carro, calcular e escrever o custo final ao consumidor.
*/
import 'dart:io';

void main() {
  double grossPrice = totalCost();
  print("O preço do carro é R\$$grossPrice");
}

double totalCost() {
  print("Insira o custo de fábrica: ");
  int factoryCost = int.parse(stdin.readLineSync()!);

  double priceWithTaxes =
      factoryCost + (factoryCost * 0.28) + (factoryCost * 0.45);
  return priceWithTaxes;
}
