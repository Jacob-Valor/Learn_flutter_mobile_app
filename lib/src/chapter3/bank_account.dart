// ignore_for_file: avoid_print
// ignore_for_file: unused_local_variable
// ignore_for_file: strict_top_level_inference
//

void main() {}

class BankAccount {
  String AccountName;
  double Balance;

  BankAccount({required this.AccountName, required this.Balance});

  void deposit(double amount) {
    Balance += amount;
    print('Deposited $amount. New balance: $Balance');
  }

  void withdraw(double amount) {
    if (amount > Balance) {
      print('Insufficient funds.');
    } else {
      Balance -= amount;
      print('Withdrew $amount. New balance: $Balance');
    }
  }
}
