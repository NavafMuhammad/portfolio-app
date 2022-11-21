import 'package:career_portfolio/core/constants.dart';
import 'package:flutter/material.dart';

class MyAchieve extends StatelessWidget {
  const MyAchieve({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "05",
          style: TextStyle(color: kColorBlack, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: const Text(
            "Projects",
            style: TextStyle(color: kColorBlack,fontSize: 16),
          ),
        ),
      ],
    );
  }
}
