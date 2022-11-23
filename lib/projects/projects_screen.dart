import 'package:career_portfolio/core/constants.dart';
import 'package:career_portfolio/projects/widgets/project_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          children: [
            kheight10,
            ProjectCard(
              onTap: () async {
                final url = Uri.parse(
                    "https://github.com/mohammed-nawaf/netflix_clone");
                if (await canLaunchUrl(url)) {
                  await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                    webViewConfiguration: const WebViewConfiguration(),
                  );
                }
              },
              lang: "FLUTTER",
              projectName: "netflix_clone",
              description: "cloned application of Netflix",
            ),
            kheight10,
            ProjectCard(
              onTap: () async {
                final url = Uri.parse(
                    "https://github.com/mohammed-nawaf/project_pixel");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url,
                      mode: LaunchMode.externalApplication,
                      webViewConfiguration: const WebViewConfiguration());
                }
              },
              lang: "FLUTTER",
              projectName: "project_pixel",
              description: "its a sample project with api integration",
            ),
            kheight10,
            ProjectCard(
              onTap: () async {
                final url = Uri.parse(
                    "https://github.com/mohammed-nawaf/flutter-money-manager");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url,
                      mode: LaunchMode.externalApplication,
                      webViewConfiguration: const WebViewConfiguration());
                }
              },
              lang: "FLUTTER",
              projectName: "money_manager",
              description:
                  "its a sample project with api integration and crud operation",
            ),
            kheight10,
            ProjectCard(
              onTap: () async {
                final url = Uri.parse(
                    "https://github.com/mohammed-nawaf/workshop-website-sample1");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url,
                      mode: LaunchMode.externalApplication,
                      webViewConfiguration: const WebViewConfiguration());
                }
              },
              lang: "HTML CSS",
              projectName: "workshop1",
              description: "its a sample project based on web desingning",
            ),
            kheight10,
            ProjectCard(
              onTap: () async {
                final url = Uri.parse(
                    "https://github.com/mohammed-nawaf/workshop-website-sample2");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url,
                      mode: LaunchMode.externalApplication,
                      webViewConfiguration: const WebViewConfiguration());
                }
              },
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
