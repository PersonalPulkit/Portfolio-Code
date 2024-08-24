import 'package:flutter/material.dart';
import '../../widgets/custom_elevated_button.dart';

class MobileAbout extends StatefulWidget {
  const MobileAbout({super.key});
  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: screenWidth * 0.1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: screenHeight * 0.3,
            width: screenWidth * 0.44,
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
                  top: screenHeight * 0.02,
                  bottom: screenHeight * 0.02,
                ),
                width: screenWidth * 0.8,
                child: const Text(
                  "Highly motivated and progress-focused IT professional with a long-standing background in this industry with a track record of initiative and dependability.Highly motivated and progress-focused IT professional with a long-standing background in this industry with a track record of initiative and dependability.",
                  maxLines: 10,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.01,
                  right: screenWidth * 0.01,
                  left: screenWidth * 0.01,
                  bottom: screenHeight * 0.01,
                ),
                child: const CustomElevatedButtonWithIcon(
                    text: "Read More", icon: Icon(Icons.read_more)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
