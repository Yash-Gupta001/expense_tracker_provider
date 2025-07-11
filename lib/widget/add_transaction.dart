import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isIncome = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: "Title",
            ),
          ),
          TextField(
            controller: _amountController,
            decoration: InputDecoration(
              labelText: "Amount",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Income',
                style: TextStyle(
                  
                ),
              ),
Switch(value: _isIncome, onChanged: (val){
  setState(() {
    
  });
}),
              Text(
                'Expense',
                style: TextStyle(
                  
                ),
              )
            ],
          )
        ],
      ),
      
      );
  }
}

////  