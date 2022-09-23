import 'Bank_Account.dart';

void main() {
  print("===========>PRIMEIRO CASO DE TESTES<===========");
  Bank_Account conta1 = new Bank_Account(123, "Nathan", 100, 100);
  print("===============================================");
  print(conta1);
  print("-----------------------------------------------");
  conta1.WithdrawMoney(50);
  print("-----------------------------------------------");

  Bank_Account conta2 = new Bank_Account(456, "Yasmin", 100, 100);
  print("===============================================");
  print(conta2);
  print("-----------------------------------------------");
  conta2.WithdrawMoney(150);
  print("-----------------------------------------------");

  Bank_Account conta3 = new Bank_Account(789, "Cleiton", 100, 100);
  print("===============================================");
  print(conta3);
  print("-----------------------------------------------");
  conta3.WithdrawMoney(250);
  print("===============================================");

  print("===========>SEGUNDO CASO DE TESTES<===========");

  List numberAndBalance = [];

  Bank_Account conta4 = new Bank_Account(9090, "Sérgio", 100, -100);
  numberAndBalance.add(conta4);
  Bank_Account conta5 = new Bank_Account(8080, "Wanessa", 100, -100);
  numberAndBalance.add(conta5);
  Bank_Account conta6 = new Bank_Account(7070, "Cláudio", 100, -100);
  numberAndBalance.add(conta6);
  Bank_Account conta7 = new Bank_Account(6060, "Fernanda", 100, -100);
  numberAndBalance.add(conta7);
  Bank_Account conta8 = new Bank_Account(5050, "Felipe", 100, -100);
  numberAndBalance.add(conta8);
  Bank_Account conta9 = new Bank_Account(4040, "Luiz", 100, -100);
  numberAndBalance.add(conta9);

  conta4.Transfer(9090, 8080, 50, numberAndBalance);
  print(conta4);
  print("===============================================");
  print(conta5);
  print("===============================================");
  print("===============================================");
  conta6.Transfer(7070, 6060, 100, numberAndBalance);
  print(conta6);
  print("===============================================");
  print(conta7);
  print("===============================================");
  print("===============================================");
  conta8.Transfer(5050, 4040, 250, numberAndBalance);
  print(conta8);
  print("===============================================");
  print(conta9);
  print("===============================================");
  print("===============================================");
}
