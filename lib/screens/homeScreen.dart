import 'package:flutter/material.dart';
import 'package:travel/screens/cog.dart';
import 'package:travel/screens/tab.dart';

import '../expense/expense_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Add profile icon onPressed logic
            },
          ),
        ],
      ),
      drawer: MediaQuery.of(context).size.width > 600
          ? null
          : Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Circle of Guardian'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => cog())
                );
              },
            ),
            ListTile(
              title: Text('Place'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyTabScreen())
                );
              },
            ),
            ListTile(
              title: Text('Expense'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Expense())
                );
              },
            ),
            // Add more ListTile items for additional screens
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}
