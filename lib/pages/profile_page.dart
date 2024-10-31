import 'package:financeapp/components/my_gnav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../components/overview_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(28, 40, 28, 28),
            height: 310,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.keyboard_option_key,
                        color: Colors.grey.shade600,
                      ),
                      Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  ),
                ),
                const Column(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/images/BradPitt.png')),
                    SizedBox(height: 16),
                    Text(
                      "Brad Pitt",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                    Text(
                      "UI/UX Designer",
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "\$8900",
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepPurple),
                        ),
                        Text(
                          "Income",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "\$5900",
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepPurple),
                        ),
                        Text(
                          "Expenses",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "\$890",
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepPurple),
                        ),
                        Text(
                          "Loan",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.notifications_outlined,
                      size: 22,
                    ),
                  ],
                ),
                Text(
                  "13th Oct 2024",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                OverviewContainer(
                  icon: Icons.arrow_upward,
                  title: 'Sent',
                  subtitle: 'Sending Payments to Clients',
                  text: '\$150',
                ),
                SizedBox(height: 10),
                OverviewContainer(
                  icon: Icons.arrow_downward,
                  title: 'Receive',
                  subtitle: 'Receiving Salary from Company',
                  text: '\$250',
                ),
                SizedBox(height: 10),
                OverviewContainer(
                  icon: Icons.local_atm_rounded,
                  title: 'Loan',
                  subtitle: 'Loan for Car',
                  text: '\$400',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: GNav(
          haptic: true,
          activeColor: Colors.deepPurple,
          tabBorderRadius: 15,
          padding: const EdgeInsets.all(24),
          backgroundColor: Colors.transparent,
          tabs: [
            const GButton(
              icon: Icons.home_outlined,
              iconSize: 26,
            ),
            GButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/transaction_history_page'),
                icon: Icons.account_balance_wallet_outlined),
            const GButton(
              icon: Icons.add_box,
              iconSize: 30,
            ),
            const GButton(icon: Icons.attach_money),
            const GButton(icon: Icons.person_2_outlined),
          ],
        ),
      ),
    );
  }
}
