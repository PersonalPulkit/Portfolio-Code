import 'package:flutter/material.dart';

import '../../widgets/custom_elevated_button.dart';

class MobileServices extends StatefulWidget {
  const MobileServices({super.key});

  @override
  State<MobileServices> createState() => _MobileServicesState();
}

class _MobileServicesState extends State<MobileServices> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        right: screenWidth * 0.01,
        left: screenWidth * 0.01,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "What can i do?",
            style: TextStyle(fontSize: 30),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                alignment: Alignment.center,
                width: screenWidth * 0.6,
                height: screenHeight * 0.25,
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.01,
                  horizontal: screenWidth * 0.01,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.5,
                      spreadRadius: 4.0,
                      color: Colors.black38,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/code.png",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "Software Development",
                      style: TextStyle(fontSize: 15),
                    ),
                    const CustomElevatedButtonWithIcon(
                        text: "Read More", icon: Icon(Icons.read_more)),
                  ],
                ),
              ),
              Container(margin: const EdgeInsets.all(15),
                alignment: Alignment.center,
                width: screenWidth * 0.6,
                height: screenHeight * 0.25,
                padding: EdgeInsets.only(
                  top: screenHeight * 0.01,
                  right: screenWidth * 0.01,
                  left: screenWidth * 0.01,
                  bottom: screenHeight * 0.01,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.5,
                      spreadRadius: 4.0,
                      color: Colors.black38,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/salesforce.png",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "Salesforce Development",
                      style: TextStyle(fontSize: 15),
                    ),
                    const CustomElevatedButtonWithIcon(
                        text: "Read More", icon: Icon(Icons.read_more)),
                  ],
                ),
              ),
              Container(margin: const EdgeInsets.all(15),
                alignment: Alignment.center,
                width: screenWidth * 0.6,
                height: screenHeight * 0.25,
                padding: EdgeInsets.only(
                  top: screenHeight * 0.01,
                  right: screenWidth * 0.01,
                  left: screenWidth * 0.01,
                  bottom: screenHeight * 0.01,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.5,
                      spreadRadius: 4.0,
                      color: Colors.black38,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/flutter.png",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "Cross-Platform Application",
                      style: TextStyle(fontSize: 15),
                    ),
                    const CustomElevatedButtonWithIcon(
                        text: "Read More", icon: Icon(Icons.read_more)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
