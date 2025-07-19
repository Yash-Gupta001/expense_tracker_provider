import 'package:expense_tracker_provider/model/transaction.dart';
import 'package:flutter/material.dart';

class TransactionProvider with ChangeNotifier {
  final List<Transaction> _transaction = [];
  List<Transaction> get transaction => _transaction;

  /// for calculating total income
  double get totalIncome => _transaction
      .where((tx) => tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);

  /// for calculating expense
  double get totalExpenses => _transaction
      .where((tx) => !tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);

  /// for the remaining balance
  double get remainingBalance => totalIncome - totalExpenses;

  /// method to add a new transaction
  void addTransaction(String title, double amount, bool isIncome) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
      isIncome: isIncome,
    );
    _transaction.insert(0, newTransaction);
    notifyListeners();
  }

  /// method to add a new transaction
  void removeTransaction(String id) {
    _transaction.removeWhere((tx) => tx.id == id);
    notifyListeners();
  }
  
}
