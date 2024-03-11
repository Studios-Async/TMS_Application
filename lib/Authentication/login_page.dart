import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tms/Authentication/signUp_page.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/Utilities/data.dart';
import 'package:tms/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//field controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Top icon
                SizedBox(
                  height: 175,
                  //child: Image.asset("assets/icons/white-board.png"),
                  child: Image.asset("assets/icons/mortarboard.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Greeting
                const Text(
                  "Hello!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 52),
                ),
                const Text(
                  "Welcome back to TMS",
                  style: TextStyle(fontSize: 32),
                ),
                const SizedBox(
                  height: 55,
                ),
                //email textfield
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Email"),
                      ),
                    ),
                  ),
                ),
                //password textfield
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //sign in button

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    // REPLACE THIS WITH THE BUTTON WHEN FIXED !!
                    width: logicalWidth * 0.9,
                    height: logicalHeight * 0.075,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15), // Rounded edges
                    ),
                    child: TextButton(
                      onPressed: () {
                        signIn;
                        // Add sign in functionality here
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                //Sign up button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Not a member?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: logicalWidth * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the signup page here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()),
                          );
                        },
                        child: const Text(
                          "Register now",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
