import 'dart:convert';

import 'package:flutter/material.dart';
import '../constant/colors.dart';
import 'package:http/http.dart' as http;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginSignupScreen extends StatefulWidget {
  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignup = true;
  bool isLoading = false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> loginUser() async {
    setState(() {
      isLoading = true;
    });

    // Replace with your actual login API endpoint
    var apiUrl = "http://127.0.0.1:5000/login";

    var response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'email': emailController.text,
        'password': passwordController.text,
      }),
    );

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 200) {
      // Handle successful login
      print("Login Successful");
      // Navigate to home or next screen
    } else {
      // Handle login failure
      print("Login Failed");
      // Show an error message
    }
  }

  Future<void> registerUser() async {
    setState(() {
      isLoading = true;
    });

    // Replace with your actual registration API endpoint
    var apiUrl = "http://127.0.0.1:5000/register";

    var response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': usernameController.text,
        'email': emailController.text,
        'password': passwordController.text,
      }),
    );

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 201) {
      // Handle successful registration
      print("Registration Successful");
      // Navigate to login screen or show success message
    } else {
      // Handle registration failure
      print("Registration Failed");
      // Show an error message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/5685020.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                color: AppColors.background6.withOpacity(.50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: isSignup ? "Welcome to " : "Welcome ",
                        style: TextStyle(
                          fontSize: 35,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        children: [
                          TextSpan(
                            text: isSignup ? "DTC," : "BACK,",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      isSignup ? "Signup to Continue" : "Signin to Continue",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          buildBottomHalfContainer(true),
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.bounceInOut,
            top: MediaQuery.of(context).size.height * 0.28,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceInOut,
              padding: EdgeInsets.all(20),
              height: isSignup
                  ? MediaQuery.of(context).size.height * 0.43
                  : MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.button,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.uppertext,
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignup = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isSignup
                                    ? AppColors.background
                                    : AppColors.arrowcolor,
                              ),
                            ),
                            if (!isSignup)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: AppColors.arrowcolor,
                              )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignup = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "SIGNUP",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSignup
                                    ? AppColors.background
                                    : AppColors.arrowcolor,
                              ),
                            ),
                            if (isSignup)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: AppColors.arrowcolor,
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                  if (isSignup) BuildSignupSection(),
                  if (!isSignup) BuildSigninSection(),
                ],
              ),
            ),
          ),
          buildBottomHalfContainer(false),
          Positioned(
            top: MediaQuery.of(context).size.height - 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(isSignup ? "Or Signup with" : "Or Signin with"),
                Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.2,
                      left: MediaQuery.of(context).size.width * 0.2,
                      top: 5),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/g.png',
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Google",
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomHalfContainer(bool showShadow) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 700),
      curve: Curves.bounceInOut,
      top: isSignup
          ? MediaQuery.of(context).size.height * 0.65
          : MediaQuery.of(context).size.height * 0.57,
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.all(15),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: AppColors.button,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              if (showShadow)
                BoxShadow(
                  color: Colors.black.withOpacity(.3),
                  spreadRadius: 1.5,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                )
            ],
          ),
          child: !showShadow
              ? Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          )
              : Center(),
        ),
      ),
    );
  }

  Container BuildSigninSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(MdiIcons.emailOutline, "Email", false, false),
          buildTextField(MdiIcons.lockOutline, "Password", false, false),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.arrowcolor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container BuildSignupSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(MdiIcons.accountOutline, "User Name", false, false),
          buildTextField(MdiIcons.emailOutline, "Email", false, false),
          buildTextField(MdiIcons.lockOutline, "Password", false, false),
        ],
      ),
    );
  }

  Widget buildTextField(
      IconData icon,
      String hintText,
      bool isPassword,
      bool isEmail,
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.background),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.background),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: AppColors.arrowcolor),
        ),
      ),
    );
  }
}