import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Transaction {
  String title;
  String type;
  double amount;

  Transaction({required this.title, required this.type, required this.amount});
}

class TransactionList extends ChangeNotifier {
  List<Transaction> transactions = [];

  void addTransaction(Transaction transaction) {
    transactions.add(transaction);
    notifyListeners();
  }
}

class addExpense extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  String transactionType = 'Income';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showTransactionDialog(context),
          child: Text('Add Transaction'),
        ),
      ),
    );
  }

  void _showTransactionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Transaction'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Transaction Type:'),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Radio(
                        value: 'Income',
                        groupValue: transactionType,
                        onChanged: (value) {
                          transactionType = value.toString();
                        },
                      ),
                      Text('Income'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'Expense',
                        groupValue: transactionType,
                        onChanged: (value) {
                          transactionType = value.toString();
                        },
                      ),
                      Text('Expense'),
                    ],
                  ),
                ],
              ),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Amount'),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                _addTransaction(context);
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  void _addTransaction(BuildContext context) {
    String title = titleController.text;
    double amount = double.parse(amountController.text);

    Transaction transaction =
    Transaction(title: title, type: transactionType, amount: amount);

    Provider.of<TransactionList>(context, listen: false)
        .addTransaction(transaction);
  }
}
