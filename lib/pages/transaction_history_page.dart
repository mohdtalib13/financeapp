import 'package:financeapp/components/circle_avatar_layout.dart';
import 'package:financeapp/components/overview_container.dart';
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
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios_new)),
                const Icon(
                  Icons.search_rounded,
                  size: 30,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 22),
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
                Text(
                  "See All..",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 0, 22),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(32, 6, 32, 6),
                    child: Text(
                      "All",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 22),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(32, 6, 32, 6),
                    child: Text(
                      "Income",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 22),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(32, 6, 32, 6),
                    child: Text(
                      "Expenses",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 22, 28, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Padding(
                padding: EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.mark_email_read_outlined,
                            color: Colors.deepPurple,
                            size: 28,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payments",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Payments from Andreo",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "\$30.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: const CircleAvatarLayout(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 0, 28, 28),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(32),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "See Details",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
