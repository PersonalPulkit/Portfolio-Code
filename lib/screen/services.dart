import 'package:flutter/material.dart';
import '../widgets/custom_elevated_button.dart';
import 'mobile/services_mobile.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    bool? isMobile = MediaQuery.of(context).size.width < 650 ? true : false;
    final Size size = MediaQuery.of(context).size;
    return isMobile ? const MobileServices():Container(
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
          const Text(
            "What can i do?",
            style: TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: size.width * 0.25,
                height: size.height *0.45,
                padding: EdgeInsets.only(
                  top: size.height * 0.01,
                  right: size.width * 0.01,
                  left: size.width * 0.01,
                  bottom: size.width * 0.01,
                ),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 4.5,
                        spreadRadius: 4.0,
                        color: Colors.black38,
                        offset: Offset(3, 4.5)),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/code.png"),
                    const Text(
                      "Software Development",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: size.width * 0.2,
                      child: Text(
                        maxLines: size.width>1100 ? 5:4,
                        overflow: TextOverflow.fade,
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      ),
                    ),
                    const CustomElevatedButtonWithIcon(
                        text: "Read More", icon: Icon(Icons.read_more)),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: size.width * 0.25,
                height: size.height *0.45,
                padding: EdgeInsets.only(
                  top: size.height * 0.01,
                  right: size.width * 0.01,
                  left: size.width * 0.01,
                  bottom: size.width * 0.01,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 4.5,
                        spreadRadius: 4.0,
                        color: Colors.black38,
                        offset: Offset(3, 4.5)),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/salesforce.png"),
                    const Text(
                      "Salesforce Development",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: size.width * 0.2,
                      child: Text(
                        maxLines: size.width>1100 ? 5:4,
                          overflow: TextOverflow.fade,
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",),
                    ),
                    const CustomElevatedButtonWithIcon(
                        text: "Read More", icon: Icon(Icons.read_more)),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: size.width * 0.25,
                height: size.height *0.45,
                padding: EdgeInsets.only(
                  top: size.height * 0.01,
                  right: size.width * 0.01,
                  left: size.width * 0.01,
                  bottom: size.width * 0.01,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 4.5,
                        spreadRadius: 4.0,
                        color: Colors.black38,
                        offset: Offset(3, 4.5)),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/flutter.png"),
                    const Text(
                      "Cross-Platform Application",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: size.width * 0.2,
                      child: Text(
                        maxLines: size.width>1100 ? 5:4,
                          overflow: TextOverflow.fade,
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",),
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
