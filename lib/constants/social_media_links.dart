import 'package:url_launcher/url_launcher.dart';

class SocialMediaLinks{
  static const String linkedIn = "https://www.linkedin.com/in/pulkit-birla/";
  static const String github = "https://github.com/PulkitJunk";
  static const String whatsapp = "https://wa.me/+916377876214";
  static const String instagram = "https://www.instagram.com/pulkit.birla?igsh=aHh2dWczODNsN21s";

  static launchSocialMediaLinkUrl(url) async {
    final Uri uri = Uri.parse(url);
    try{await launchUrl(uri);}
    catch(e){
      throw 'Could not launch $uri with error $e';
    }

  }
}