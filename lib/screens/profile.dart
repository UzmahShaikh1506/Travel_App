import 'package:flutter/material.dart';
import '../screens/homeScreen.dart';
import '../widgets/fullWidthButton.dart';
import '../widgets/roundedPassword.dart';
import '../widgets/roundedTextField.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 600.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 64.0,
                  backgroundImage: NetworkImage(
                      'https://ui-avatars.com/api/?name=John&size=256&bold=true'),
                ),
                SizedBox(height: 16.0),
                RoundedTextField(label: 'Name'),
                SizedBox(height: 16.0),
                RoundedTextField(label: 'Email'),
                SizedBox(height: 16.0),
                RoundedTextField(label: 'Phone Number'),
                SizedBox(height: 16.0),
                RoundedPasswordField(),
                SizedBox(height: 16.0),
                fullWidthButton(label: "Save", Class: HomeScreen()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

