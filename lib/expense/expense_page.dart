import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

List<Card> expenseCards = [];

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  String selectedCategory = 'Income';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          _showExpenseDialog(context);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02),
          child: Icon(
            Icons.dashboard,
            color: Colors.black,
          ),
        ),
        leadingWidth: MediaQuery.of(context).size.width * 0.06,
        title: Text(
          "Dashboard",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.height * 0.03),
        ),
      ),
      body: Column(
        children: [
          Gap(MediaQuery.of(context).size.height * 0.02),
          Center(
            child: Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.height * 0.01),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6,
                    spreadRadius: 3,
                    offset: Offset(5, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.07),
                color: Colors.black,
              ),
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width * 0.83,
              child: Row(
                children: [
                  Text(
                    "Rs ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                    ),
                  ),
                  Text(
                    " XXXXX",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.045,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(MediaQuery.of(context).size.height * 0.02),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              "All Expenses",
              style: GoogleFonts.akshar(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height * 0.024,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: ListView.builder(
              itemCount: expenseCards.length,
              itemBuilder: (context, index) {
                return expenseCards[index];
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showExpenseDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Expense'),
          content: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              Row(
                children: [
                  Text('Category:'),
                  Radio(
                    value: 'Income',
                    groupValue: selectedCategory,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value.toString();
                      });
                    },
                  ),
                  Text('Income'),
                  Radio(
                    value: 'Expense',
                    groupValue: selectedCategory,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value.toString();
                      });
                    },
                  ),
                  Text('Expense'),
                ],
              ),
              TextField(
                controller: amountController,
                decoration: InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _addExpense();
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  void _addExpense() {
    String title = titleController.text;
    String category = selectedCategory;
    double amount = double.tryParse(amountController.text) ?? 0.0;

    if (title.isNotEmpty && amount > 0) {
      Card expenseCard = Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text('Category: $category\nAmount: Rs $amount'),
        ),
      );

      setState(() {
        expenseCards.add(expenseCard);
      });
    }
  }
}
