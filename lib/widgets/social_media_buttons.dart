

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/social_media_links.dart';
import '../providers/theme_provider.dart';

class SocialMediaButtons extends StatefulWidget {

  const SocialMediaButtons({super.key});

  @override
  State<SocialMediaButtons> createState() => _SocialMediaButtonsState();
}

class _SocialMediaButtonsState extends State<SocialMediaButtons> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.only(top: size.height * 0.01,
            right: size.width * 0.01,
            left: size.width * 0.01,
            bottom: size.width * 0.01,),
          child: InkWell(
            onTap: (){
              SocialMediaLinks.launchSocialMediaLinkUrl(SocialMediaLinks.linkedIn);
            },
            child: CircleAvatar(
              backgroundColor: Colors.black,
              maxRadius: 25,
              minRadius: 10,
              child: !context.watch<ThemeProvider>().getSelectedTheme? Image.asset( "assets/images/linkedindark.png"):Image.asset("assets/images/linkedin.gif"),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: size.height * 0.01,
          right: size.width * 0.01,
          left: size.width * 0.01,
          bottom: size.width * 0.01,),
          child: InkWell(
            onTap: (){
              SocialMediaLinks.launchSocialMediaLinkUrl(SocialMediaLinks.github);
            },
            child: CircleAvatar(
              backgroundColor: Colors.black,
              maxRadius: 25,
              minRadius: 10,
              child: !context.watch<ThemeProvider>().getSelectedTheme? Image.asset( "assets/images/githubdark.png"):Image.asset("assets/images/github.gif"),
            ),
          ),
        ),
        Container(padding: EdgeInsets.only(top: size.height * 0.01,
          right: size.width * 0.01,
          left: size.width * 0.01,
          bottom: size.width * 0.01,),
          child: InkWell(
            onTap: (){
              SocialMediaLinks.launchSocialMediaLinkUrl(SocialMediaLinks.whatsapp);
            },
            child: CircleAvatar(
              backgroundColor: Colors.black,
              maxRadius: 25,
              minRadius: 10,
              child: !context.watch<ThemeProvider>().getSelectedTheme? Image.asset( "assets/images/whatsappdark.png"):Image.asset("assets/images/whatsapp.gif"),
            ),
          ),
        ),
        Container(padding: EdgeInsets.only(top: size.height * 0.01,
          right: size.width * 0.01,
          left: size.width * 0.01,
          bottom: size.width * 0.01,),
          child: InkWell(
            onTap: (){
              SocialMediaLinks.launchSocialMediaLinkUrl(SocialMediaLinks.instagram);
            },
            child: CircleAvatar(
              backgroundColor: Colors.black,
              maxRadius: 25,
              minRadius: 10,
              child: !context.watch<ThemeProvider>().getSelectedTheme? Image.asset( "assets/images/instagramdark.png"):Image.asset("assets/images/instagram.gif"),
            ),
          ),
        ),

      ],
    );
  }
}
