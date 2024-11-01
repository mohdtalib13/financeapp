import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvatarLayout extends StatelessWidget {
  const CircleAvatarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          child: CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage('assets/images/BradPitt.png')
          ),
        ),
      ],
    );
  }
}
