import 'package:career_portfolio/core/constants.dart';
import 'package:flutter/material.dart';

class MySpec extends StatelessWidget {
  final IconData icon;
  final String tech;
  const MySpec({
    Key? key,
    required this.icon,
    required this.tech,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105,
      height: 115,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: kCardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            kheight10,
            Text(
              tech,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}