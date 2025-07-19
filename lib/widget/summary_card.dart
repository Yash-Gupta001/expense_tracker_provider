import 'package:expense_tracker_provider/provider/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(context);
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Monthly Summry',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Income: \₹${transactionProvider.totalIncome.toStringAsFixed(2)}',
                ),
                Text(
                  'Total Expenses: \₹${transactionProvider.totalExpenses.toStringAsFixed(2)}',
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Remaining Balance: ₹${transactionProvider.remainingBalance.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: transactionProvider.remainingBalance < 0
                    ? Colors.red
                    : Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
