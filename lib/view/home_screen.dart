import 'package:expense_tracker_provider/widget/add_transaction.dart';
import 'package:expense_tracker_provider/widget/summary_card.dart';
import 'package:expense_tracker_provider/widget/transaction_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SummaryCard(),
          Expanded(child: TransactionList()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => AddTransaction(),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
