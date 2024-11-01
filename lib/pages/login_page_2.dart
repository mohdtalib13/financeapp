import 'package:financeapp/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset(
                  'assets/images/Logo.png',
                  height: 100,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  child: TextField(
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter your email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  child: TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/profile_page'),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SignUp",
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade800),
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
