import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/social_media_buttons.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      // height: screenHeight, //home section container
      padding: EdgeInsets.only(
        top: screenHeight * 0.03,
        right: screenWidth * 0.05,
        left: screenWidth * 0.05,
      ),
      child: Column(
        // home section column
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ShakeY(
              curve: Curves.linear,
              from: 10,
              infinite: true,
              duration: const Duration(seconds: 5),
              child: SizedBox(
                height: screenHeight * 0.3,
                width: screenWidth * 0.4,
                child: Image.asset("assets/images/image.png"),
              ),
            ),
          ),
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
            width: screenWidth * 0.9,
            child: const Text(
              textAlign: TextAlign.justify,
              "A highly motivated and progress-focused IT professional with a strong background in the industry. I have a proven track record of initiative and dependability, having devised strategic initiatives that have added significant value to my previous roles. My expertise lies in solutions deployment, operational analysis, and project management. I am skilled at problem-solving, teamwork, and developing specifications and requirements to drive business improvements. I am progressive-minded and stay updated with new developments in my field, enjoying collaborative brainstorming sessions to achieve common goals.",
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
          Center(
            child: Container(
              padding: EdgeInsets.only(
                top: screenHeight * 0.01,
                right: screenWidth * 0.01,
                left: screenWidth * 0.01,
                bottom: screenHeight * 0.01,
              ),
              child: const CustomElevatedButtonWithIcon(
                  text: "Download Resume", icon: Icon(Icons.download)),
            ),
          ),
        ],
      ),
    );
  }
}
