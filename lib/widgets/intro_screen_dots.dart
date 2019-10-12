import 'package:flutter/material.dart';

class IntroScreenDots extends StatelessWidget {
  final bool isActive;

  IntroScreenDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      height: isActive ? 6 : 6,
      width: isActive ? 12 : 6,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
