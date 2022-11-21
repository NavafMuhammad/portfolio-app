import 'package:career_portfolio/core/constants.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String lang;
  final String projectName;
  final String description;
  const ProjectCard({
    Key? key,
    required this.lang,
    required this.projectName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 200,
      width: size.width * 0.95,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: kProjectsCardColor,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: const TextStyle(fontSize: 18),
              ),
              kheight30,
              Text(
                projectName,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              kheight10,
              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}