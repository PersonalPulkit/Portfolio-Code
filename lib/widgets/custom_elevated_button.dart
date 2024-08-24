import 'package:flutter/material.dart';

class CustomElevatedButtonWithOutIcon extends StatelessWidget {
  final String text;
  final VoidCallback? callBack;

  const CustomElevatedButtonWithOutIcon({super.key, required this.text, this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callBack,
      style: ElevatedButton.styleFrom(

        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Text(text),
    );
  }
}


class CustomElevatedButtonWithIcon extends StatelessWidget {
  final String text;
  final Icon icon;
  final VoidCallback? callBack;

  const CustomElevatedButtonWithIcon({super.key,  required this.text, required this.icon, this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: callBack, icon: icon,label: Text(text),);
  }
}
