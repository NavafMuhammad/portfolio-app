import 'package:career_portfolio/core/constants.dart';
import 'package:career_portfolio/projects/widgets/project_card.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text("Projects"),
      ),
      body: SingleChildScrollView(
          child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            kheight10,
            ProjectCard(
              lang: "FLUTTER",
              projectName: "netflix_clone",
              description: "cloned application of Netflix",
            ),
            kheight10,
            ProjectCard(
              lang: "FLUTTER",
              projectName: "project_pixel",
              description: "its a sample project with api integration",
            ),
            kheight10,
            ProjectCard(
              lang: "FLUTTER",
              projectName: "money_manager",
              description:
                  "its a sample project with api integration and crud operation",
            ),
            kheight10,
            ProjectCard(
              lang: "HTML CSS",
              projectName: "workshop1",
              description: "its a sample project based on web desingning",
            ),
            kheight10,
            ProjectCard(
              lang: "HTML CSS",
              projectName: "workshop2",
              description: "its a sample project done based on web designing",
            ),
            kheight10,
          ],
        ),
      )),
    );
  }
}
