/*
A Secretaria do Meio Ambiente mediu a quantidade de poluentes
atmosféricos emitidos por uma empresa. Dependendo do valor obtido,
a empresa foi multada conforme a tabela abaixo. Faça um algoritmo
que monte esta tabela, solicitando as informações variáveis (xxx) para
o usuário:

Até 1500 multa de R$ 1000.55

Acima de 1500 até 3000 multa de R$ 3550.34

Acima de 3000 multa de R$ 1200.21 por poluente emitido
*/

import 'dart:io';

void main() {
  print("Insira a quantidade de poluentes: ");
  int contaminants = int.parse(stdin.readLineSync()!);

  double penalty = double.parse(stdin.readLineSync()!);

  if (contaminants < 1501) {
    penalty = 1000.55;
  }
  if (contaminants > 1500 && contaminants < 3001) {
    penalty = 3550.34;
  } else {
    penalty = 1200.21 * contaminants;
  }

  print(
      "Quantidade de poluentes emitidos => $contaminants\nMulta aplicada sobre os poluentes emitidos => $penalty");
}
