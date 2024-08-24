import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/constants/media_size.dart';
import '../widgets/custom_elevated_button.dart';
import 'mobile/about_mobile.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MediaSize.isCompact(size)
        ? const MobileAbout()
        : Container(
            width: size.width,
            height: size.height,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: size.width * 0.1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: size.height * 0.75,
                      width: size.width * 0.2,
                      child: Image.asset("assets/images/image.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "About me",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        const Text(
                          "Software Developer!",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: size.height * 0.02,
                            bottom: size.width * 0.02,
                          ),
                          width: size.width * 0.5,
                          child: const Text(
                            "Highly motivated and progress-focused IT professional with a long-standing background in this industry with a track record of initiative and dependability.",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: size.height * 0.01,
                            right: size.width * 0.01,
                            left: size.width * 0.01,
                            bottom: size.width * 0.01,
                          ),
                          child: const CustomElevatedButtonWithIcon(
                              text: "Read More", icon: Icon(Icons.read_more)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
