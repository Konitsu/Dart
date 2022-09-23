class Bank_Account {
  int _numberAccount = 0;
  String _name = "";
  double _accountBalance = 0;
  double _creditLimit = 0;

  Bank_Account(int _numberAccount, String _name, double _accountBalance,
      double _creditLimit) {
    this._numberAccount = _numberAccount;
    this._name = _name;
    this._accountBalance = _accountBalance;
    this._creditLimit = _creditLimit;
  }

  int getNumberAccount() {
    return _numberAccount;
  }

  void setNumberAccount(int _numberAccount) {
    this._numberAccount = _numberAccount;
  }

  String getName() {
    return _name;
  }

  void setName(String _name) {
    this._name = _name;
  }

  double getAccountBalance() {
    return _accountBalance;
  }

  void setAccountBalance(double _accountBalance) {
    this._accountBalance = _accountBalance;
  }

  double getCreditLimit() {
    return _creditLimit;
  }

  void setCreditLimit(double _creditLimit) {
    this._creditLimit = _creditLimit;
  }

  double WithdrawMoney(double takeoutValue) {
    double _x = _accountBalance + _creditLimit;
    try {
      if (takeoutValue > _x) {
        throw new Error();
      } else {
        if (takeoutValue <= _accountBalance) {
          _accountBalance -= takeoutValue;
        } else {
          _accountBalance = -takeoutValue + _accountBalance;
        }
        print("Saque bem sucessido!");
      }
    } catch (e) {
      print(
          "Valor inválido para saque!\nO valor máximo que poderá ser sacado é -> R\$" +
              _x.toStringAsFixed(2).replaceAll(".", ","));
      //  withdrawMoney(takeoutValue);
    } finally {
      print("Saldo atual -> R\$" +
          _accountBalance.toStringAsFixed(2).replaceAll(".", ","));
      return _accountBalance;
    }
  }

  double Deposit(double depositValue) {
    print("Depósito bem sucedido!\nSaldo atual -> " +
        (_accountBalance += depositValue)
            .toStringAsFixed(2)
            .replaceAll(".", ","));
    return _accountBalance += depositValue;
  }

  void Transfer(int _numberAccountGive, int _numberAccountReceive,
      double transferValue, List numberAndBalance) {
    try {
      if (transferValue > _accountBalance) {
        throw new Error();
      } else {
        for (var i = 0; i < numberAndBalance.length; i++) {
          if (_numberAccountGive == numberAndBalance[i].getNumberAccount()) {
            numberAndBalance[i].setAccountBalance(
                numberAndBalance[i].getAccountBalance() - transferValue);
          }
        }

        for (var i = 0; i < numberAndBalance.length; i++) {
          if (_numberAccountReceive == numberAndBalance[i].getNumberAccount()) {
            numberAndBalance[i].setAccountBalance(
                numberAndBalance[i].getAccountBalance() + transferValue);
          }
        }
        print("-----------------------------------------------");
        print("Transfêrencia bem sucedida!");
        print("-----------------------------------------------");
      }
    } catch (e) {
      print("-----------------------------------------------");
      print(
          "Valor inválido para transferência!\nFavor verificar o saldo disponível para realizar a mesma!");
      print("-----------------------------------------------");
    }
  }

  @override
  String toString() {
    return _name +
        "\nNº Conta: " +
        _numberAccount.toStringAsFixed(0) +
        "\nSaldo -> R\$" +
        _accountBalance.toStringAsFixed(2).replaceAll(".", ",") +
        "\nCrédito disponível ->R\$" +
        _creditLimit.toStringAsFixed(2).replaceAll(".", ",");
  }
}
