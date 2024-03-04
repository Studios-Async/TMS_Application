import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/Utilities/data.dart';
import 'package:tms/general_screens/Other/Utilities/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                SizedBox(
                  height: 175,
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
                  "Welcome to TMS",
                  style: TextStyle(fontSize: 32),
                ),
                const SizedBox(
                  height: 55,
                ),
                //email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                        ),
                      ),
                    ),
                  ),
                ),
                //password textfield
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
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
                const SizedBox(
                  height: 30,
                ),
                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: NewButton(
                    buttonheight: 50,
                    buttonwidth: double.infinity,
                    usingIcon: false,
                    text: "Sign In",
                    textsize: 20,
                    circle: false,
                    onPressed: () {
                      // Implement sign-in functionality
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //create account button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: NewButton(
                    buttonheight: 50,
                    buttonwidth: double.infinity,
                    usingIcon: false,
                    text: "Create Account",
                    textsize: 20,
                    circle: false,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
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
