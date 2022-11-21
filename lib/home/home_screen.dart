import 'package:career_portfolio/about/about_screen.dart';
import 'package:career_portfolio/core/constants.dart';
import 'package:career_portfolio/home/widgets/my_achieve.dart';
import 'package:career_portfolio/home/widgets/row_cards.dart';
import 'package:career_portfolio/projects/projects_screen.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          icon: const Icon(
            Icons.menu_rounded,
            size: 35,
          ),
          color: kColorBlack,
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                padding: const EdgeInsets.only(top: 40, left: 10),
                value: 1,
                child: TextButton(
                  child: const Text(
                    "PROJECTS",
                    style: TextStyle(
                        color: kColorWhite, fontSize: 18, letterSpacing: 1.5),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProjectScreen(),
                    ));
                  },
                ),
              ),
              PopupMenuItem(
                padding: const EdgeInsets.only(top: 0, left: 10),
                value: 2,
                child: TextButton(
                  child: const Text(
                    "CONTACT",
                    style: TextStyle(
                        color: kColorWhite, fontSize: 18, letterSpacing: 1.5),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ));
                  },
                ),
              ),
            ];
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 50,
          snapSpec: const SnapSpec(
            // Enable snapping. This is true by default.
            snap: true,
            // Set custom snapping points.
            snappings: [0.38, 0.7, 1.0],
            // Define to what the snappings relate to. In this case,
            // the total available space that the sheet can expand to.
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          // The body widget will be displayed under the SlidingSheet
          // and a parallax effect can be applied to it.
          body: SizedBox(
            child: Stack(
              children: [
                SizedBox(
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent],
                      ).createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100, left: 80),
                      child: Image.asset(
                        'assets/profile_image.png',
                        fit: BoxFit.contain,
                        height: 300,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.42),
                  child: Column(children: [
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Mohammed',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          ' Nawaf',
                          style: TextStyle(fontSize: 40, color: kColorAmber),
                        ),
                      ],
                    ),
                    kheight5,
                    const Text(
                      'Flutter Developer',
                      style: TextStyle(fontSize: 20),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          headerBuilder: (context, state) {
            return SizedBox(
              height: 26,
              child: Center(
                  child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                height: 6,
                width: 35,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
              )),
            );
          },
          builder: (context, state) {
            // This is the content of the sheet that will get
            // scrolled, if the content is bigger than the available
            // height of the sheet.
            return Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              color: Colors.grey.shade200,
              child: Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      MyAchieve(),
                    ],
                  ),
                  kheight30,
                  const Text(
                    'About Me',
                    style: TextStyle(
                      color: kColorBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kheight10,
                  const Text(
                    "A junior flutter developer passionate about delivering, engaging and visually compelling applications with user-friendly interactions that drive business growth and improve UX with 1 year experience in web development and cross platform mobile development using flutter. Looking for opportunities as a flutter developer with an expert team of developers who will help advance my career progression to senior positions in the future.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: kColorBlack, fontSize: 18, height: 1.5),
                  ),
                  kheight10,
                  const Text(
                    "I'm a self-taught Mobile Application Developer without having any CS background or a graduation certificate. My interest in computer science began when I first encountered computer coding while creating a small website. From there on, I was captivated. I started working on small projects of my own, creating other websites and a simple calculator. I have learned small pieces of codes from several languages through the lectures like free Code Camp that are available online freely as well as through other. For me, working on computer code is my way of being creative, since I find it difficult to be creative in more common ways such as drawing. Every time I write a piece of computer code, I get the feeling I have created a piece of art and reading computer code, to me, feels like looking at a piece of art.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: kColorBlack, fontSize: 18, height: 1.5),
                  ),
                  kheight30,
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProjectScreen(),
                          )),
                          child: SizedBox(
                            height: 100,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: kCardColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                child: Text("PROJECTS",
                                    style: TextStyle(
                                        fontSize: 16, letterSpacing: 1.5)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      kwidth10,
                      Expanded(
                        child: GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AboutScreen(),
                          )),
                          child: SizedBox(
                            height: 100,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: kCardColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                  child: Text("CONTACT",
                                      style: TextStyle(
                                          fontSize: 16, letterSpacing: 1.5))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kheight30,
                  const Text(
                    'Specialized In',
                    style: TextStyle(
                      color: kColorBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kheight10,
                  const RowCards(),
                  kheight30,
                  Align(
                    child: SizedBox(
                      height: 45,
                      width: size.width * 0.5,
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kCardColor)),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (ctx) {
                              return AlertDialog(
                                title: Text("Hire Nawaf"),
                                content: Text("Choose Contact Option"),
                                actions: [
                                  GestureDetector(
                                      onTap: () async {
                                        final email = "navafmuhd@gmail.com";
                                        final url = Uri.parse('mailto:$email');
                                        if (await canLaunchUrl(url)) {
                                          await launchUrl(url);
                                        }
                                      },
                                      child: Text(
                                        "CONTACT EMAIL",
                                        style: TextStyle(
                                            color: kColorBlack, fontSize: 15),
                                      )),
                                  GestureDetector(
                                    onTap: () async {
                                      final phoneNumber = "+919746995726";
                                      final url = Uri.parse('tel:$phoneNumber');

                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      }
                                    },
                                    child: Text("MAKE A PHONE CALL",
                                        style: TextStyle(
                                            color: kColorBlack, fontSize: 15)),
                                  ),
                                  kheight30,
                                ],
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Hire ',
                              style:
                                  TextStyle(color: kColorWhite, fontSize: 18),
                            ),
                            Text(
                              'Me',
                              style:
                                  TextStyle(color: kColorAmber, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  kheight30,
                ],
              )),
            );
          },
        ),
      ),
    );
  }
}
