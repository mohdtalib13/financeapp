import 'package:financeapp/pages/login_page.dart';
import 'package:financeapp/pages/login_page_2.dart';
import 'package:financeapp/pages/profile_page.dart';
import 'package:financeapp/pages/transaction_history_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage2(),
      routes: {
        '/login_page': (context) => const LoginPage(),
        '/login_page_2': (context) => const LoginPage2(),
        '/profile_page': (context) => const ProfilePage(),
        '/transaction_history_page': (context) => const TransactionHistoryPage(),
      },
    );
  }
}