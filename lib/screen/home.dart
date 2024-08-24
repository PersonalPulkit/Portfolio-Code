import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/constants/media_size.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/social_media_buttons.dart';
import 'mobile/home_mobile.dart';
import 'dart:html' as html;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    void downloadFile(String url) {
      html.AnchorElement anchorElement = html.AnchorElement(href: url);
      anchorElement.download = url;
      anchorElement.click();
    }

    return !MediaSize.isExpanded(size)
        ? const MobileHome()
        : Container(
            height: size.height,
            padding: EdgeInsets.only(
              top: screenHeight * 0.15,
              right: screenWidth * 0.05,
              left: screenWidth * 0.05,
              bottom: screenHeight * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hey! it's me",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      "Pulkit Birla",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "And I'm a ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        AnimatedTextKit(
                            pause: const Duration(milliseconds: 10),
                            repeatForever: true,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                "Software Developer ",
                                speed: const Duration(milliseconds: 100),
                                cursor: '|',
                                curve: Curves.fastOutSlowIn,
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              TypewriterAnimatedText(
                                "Salesforce Developer ",
                                speed: const Duration(milliseconds: 100),
                                cursor: '|',
                                curve: Curves.fastOutSlowIn,
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              TypewriterAnimatedText(
                                "Flutter Developer ",
                                speed: const Duration(milliseconds: 100),
                                cursor: '|',
                                curve: Curves.fastOutSlowIn,
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ]),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.02,
                        bottom: screenHeight * 0.02,
                      ),
                      width: screenWidth * 0.5,
                      child: const Text(
                        textAlign: TextAlign.justify,
                        "I am a highly motivated and progress-focused IT professional with a long-standing background in this industry. With a track record of initiative and dependability, I have devised strategic initiatives which I believe will prove valuable to company. Throughout the course of my career, I have perfected my solutions deployment and operational analysis abilities. I am a capable and consistent problem-solver skilled at prioritizing and managing projects with proficiency. In reference my previous projects, I have contributed in problem-solving, teamwork, and developing specifications and requirements toward team efforts and business improvements. I am progressive minded and in tune with new developments in my field. I have proven to be effective and collaborative with strong team-building talents. I enjoy collective brainstorming sessions which all me to coordinate activities to achieve a common goal.",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.02,
                        bottom: screenHeight * 0.02,
                      ),
                      child: const SocialMediaButtons(),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.01,
                        right: screenWidth * 0.01,
                        left: screenWidth * 0.01,
                        bottom: screenHeight * 0.01,
                      ),
                      child: CustomElevatedButtonWithIcon(
                        text: "Download Resume",
                        icon: const Icon(Icons.download),
                        callBack: () => downloadFile(
                            'https://drive.google.com/uc?export=download&id=1t3aYlGDC9Mg4aCyHcrrygobeauPIFB0H'),
                      ),
                    ),
                  ],
                ),
                ShakeY(
                  curve: Curves.linear,
                  from: 20,
                  infinite: true,
                  duration: const Duration(seconds: 5),
                  child: SizedBox(
                    height: screenHeight * 0.5,
                    width: screenWidth * 0.3,
                    child: Image.asset("assets/images/image.png"),
                  ),
                ),
              ],
            ),
          );
  }
}
