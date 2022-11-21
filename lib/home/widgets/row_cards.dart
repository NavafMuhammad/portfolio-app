import 'package:career_portfolio/core/constants.dart';
import 'package:career_portfolio/home/widgets/my_spec.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowCards extends StatelessWidget {
  const RowCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            MySpec(
              icon: FontAwesomeIcons.f,
              tech: "Flutter",
            ),
            MySpec(
              icon: FontAwesomeIcons.code,
              tech: "Dart",
            ),
            MySpec(
              icon: FontAwesomeIcons.fire,
              tech: "Firebase",
            ),
          ],
        ),
        kheight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            MySpec(
              icon: FontAwesomeIcons.hive,
              tech: "Hive",
            ),
            MySpec(
              icon: FontAwesomeIcons.git,
              tech: "Git",
            ),
            MySpec(
              icon: FontAwesomeIcons.r,
              tech: "Rest API",
            ),
          ],
        ),
        kheight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            MySpec(
              icon: Icons.android,
              tech: "Android",
            ),
            MySpec(
              icon: Icons.apple,
              tech: "iOS",
            ),
            MySpec(
              icon: FontAwesomeIcons.windows,
              tech: "Windows",
            ),
          ],
        ),
        kheight10,
      ],
    );
  }
}