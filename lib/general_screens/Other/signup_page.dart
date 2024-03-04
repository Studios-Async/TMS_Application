import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/Utilities/data.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isLoading = false;

  void _signUp() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      // If sign up successful, you can navigate to the next screen or perform any other action.
      print('Sign up successful: ${userCredential.user!.email}');
      // Example: Navigate to home page
      Navigator.pushReplacementNamed(context, '/home');
    } catch (e) {
      // If sign up fails, display an error message.
      print('Sign up failed: $e');
      // You can show an error message using a SnackBar or AlertDialog
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Sign up failed: $e')));
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            _isLoading
                ? CircularProgressIndicator()
                : NewButton(
                    buttonheight: 50,
                    buttonwidth: double.infinity,
                    usingIcon: false,
                    text: 'Sign Up',
                    textsize: 20,
                    circle: false,
                    onPressed: _signUp,
                  ),
          ],
        ),
      ),
    );
  }
}
