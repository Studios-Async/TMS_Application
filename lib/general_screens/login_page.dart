import 'package:flutter/material.dart';
import 'package:tms/buttontemplate.dart';
import 'package:tms/data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Top icon
                Container(
                  height: 175,
                  //child: Image.asset("assets/icons/white-board.png"),
                  child: Image.asset("assets/icons/mortarboard.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                //Greeting
                Text(
                  "Hello!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 52),
                ),
                Text(
                  "Welcome to TMS",
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  height: 55,
                ),
                //email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Email"),
                      ),
                    ),
                  ),
                ),
                //password textfield
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //sign in button

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    child: Center(
                        child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
