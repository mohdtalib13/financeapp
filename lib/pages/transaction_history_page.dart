import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 30, 24, 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios_new),
                Icon(Icons.search_rounded, size: 30,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Recent Tractions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.deepPurple),
                ),
                Text("See All..", style: TextStyle(fontSize: 16),),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 22),
                child: Container(
                  decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(22),),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                    child: Text("All", style: TextStyle(fontSize: 16, color: Colors.white),),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
