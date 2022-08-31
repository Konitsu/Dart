import 'dart:io';

import '../InputClass.dart';

void main() {
  var message;
  const gasolinePrice = 4.45;
  const ethanolPrice = 3.98;

  message = ("Digite quantos litros que irá abastecer =>");
  var fuel = readInt(message);

  var gasoline;
  var ethanol;

  if (fuel < 20) {
    gasoline = fuel * gasolinePrice * 0.04;
    ethanol = fuel * ethanolPrice * 0.03;
  } else {
    gasoline = fuel * gasolinePrice * 0.06;
    ethanol = fuel * ethanolPrice * 0.05;
  }
  print("Ao abastecer " +
      fuel.toStringAsFixed(0) +
      "L você receberá um desconto de =>\nEtanol = R\$" +
      ethanol.toStringAsFixed(2).replaceAll(".", ",") +
      " \nGasolina = R\$" +
      gasoline.toStringAsFixed(2).replaceAll(".", ","));
  print("=================================================================");

  var finalGasoline = (gasolinePrice * fuel) - gasoline;
  var finalEthanol = (ethanolPrice * fuel) - ethanol;

  print(
      "O preço final após abastecer e aplicar os descontos, será de =>\nEtanol = R\$" +
          finalEthanol.toStringAsFixed(2).replaceAll(".", ",") +
          "\nGasolina = R\$" +
          finalGasoline.toStringAsFixed(2).replaceAll(".", ","));

  print(finalGasoline < finalEthanol
      ? "A melhor opção será abastecer com gasolina."
      : "A melhor opção será abastecer com etanol.");
}
