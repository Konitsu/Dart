/*
Faça um algoritmo que solicite ao usuário o seu nome, seus documentos
(CPF, identidade, título de eleitor, carteira de motorista), seu salário e o nome da empresa em que trabalha, e depois imprima a sua FICHA FUNCIONAL.
*/
import 'dart:io';

void main() {
  print("Insira seus dados ->");

  print("Nome: ");
  String name = stdin.readLineSync()!;

  print("CPF: ");
  String cpf = stdin.readLineSync()!;

  print("Identidade: ");
  String identity = stdin.readLineSync()!;

  print("Título de eleitor: ");
  int voterTitle = int.parse(stdin.readLineSync()!);

  print("Carteira de motorista: ");
  int driverLicense = int.parse(stdin.readLineSync()!);

  print("Salário: ");
  double salary = double.parse(stdin.readLineSync()!);

  print("Nome da empresa em que trabalha: ");
  String companyName = stdin.readLineSync()!;

  functionalPlugLayout(
      name, cpf, identity, voterTitle, driverLicense, salary, companyName);
}

void functionalPlugLayout(
    name, cpf, identity, voterTitle, driverLicense, salary, companyName) {
  print(
      "FICHA FUNCIONAL DE: $name\n\nDocumentos:\nCPF ..................................... $cpf\nC.I. .................................... $identity\nTitulo de eleitor ....................... $voterTitle\nCarteira de motorista ................... $driverLicense\n\nEmpresa: $companyName\nSalário: R\$$salary");
}