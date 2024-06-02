import 'package:career_portfolio/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBlack,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: SizedBox(
        child: Stack(
          children: [
            SizedBox(
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    tileMode: TileMode.mirror,
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(rect.width, rect.width, 0, 0));
                },
                blendMode: BlendMode.dstIn,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 15),
                  child: Image.asset(
                    'assets/profileImage.png',
                    fit: BoxFit.contain,
                    height: 500,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.47),
              child: Column(
                children: [
                  Row(
                    children: [
                      kwidth25,
                      Padding(
                        padding: const EdgeInsets.only(left: 33),
                        child: Row(
                          children: const [
                            Text(
                              "Hello",
                              style:
                                  TextStyle(color: kColorWhite, fontSize: 30),
                            ),
                            Text(
                              " I'm",
                              style:
                                  TextStyle(color: kColorAmber, fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  kheight5,
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,

                    children: const [
                      Text(
                        'Mohammed',
                        style: TextStyle(color: kColorWhite, fontSize: 40),
                      ),
                      Text(
                        ' Nawaf',
                        style: TextStyle(color: kColorAmber, fontSize: 40),
                      ),
                    ],
                  ),
                  kheight5,
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  kheight30,
                  SizedBox(
                    width: 100,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(kColorWhite)),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (ctx) {
                            return AlertDialog(
                              title: const Text("Hire Nawaf"),
                              content: const Text("Choose Contact Option"),
                              actions: [
                                GestureDetector(
                                    onTap: () async {
                                      const email = "navafmuhd@gmail.com";
                                      final url = Uri.parse('mailto:$email');
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      }
                                    },
                                    child: const Text(
                                      "CONTACT EMAIL",
                                      style: TextStyle(
                                          color: kColorBlack, fontSize: 15),
                                    )),
                                GestureDetector(
                                  onTap: () async {
                                    const phoneNumber = "+919746995726";
                                    final url = Uri.parse('tel:$phoneNumber');

                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    }
                                  },
                                  child: const Text("MAKE A PHONE CALL",
                                      style: TextStyle(
                                          color: kColorBlack, fontSize: 15)),
                                ),
                                kheight30,
                              ],
                            );
                          },
                        );
                      },
                      child: const Text(
                        'Hire Me',
                        style: TextStyle(
                            color: kColorBlack, fontSize: 18, letterSpacing: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () async {
                        final url = Uri.parse(
                            "https://www.instagram.com/i.navafmuhammad/");

                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication,
                              webViewConfiguration:
                                  const WebViewConfiguration());
                        }
                      },
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: kColorWhite,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        final url = Uri.parse("https://twitter.com/_navafmuhd");

                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication,
                              webViewConfiguration:
                                  const WebViewConfiguration());
                        }
                      },
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: kColorWhite,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        final url = Uri.parse(
                            "https://www.linkedin.com/in/mohammed-nawaf-6a96491ba/");

                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication,
                              webViewConfiguration:
                                  const WebViewConfiguration());
                        }
                      },
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                        color: kColorWhite,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        final url =
                            Uri.parse("https://www.github.com/mohammed-nawaf");

                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication,
                              webViewConfiguration:
                                  const WebViewConfiguration());
                        }
                      },
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        color: kColorWhite,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        final url = Uri.parse(
                            "https://www.stackoverflow.com/users/14502828/mohammed-nawaf");

                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication,
                              webViewConfiguration:
                                  const WebViewConfiguration());
                        }
                      },
                      icon: const Icon(
                        FontAwesomeIcons.stackOverflow,
                        color: kColorWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
