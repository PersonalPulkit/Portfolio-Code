import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Icon? icon;
  final Icon? sicon;
  final String text;
  final TextEditingController? fetchtext;
  final int? maxlines;

  const CustomTextField(
      {super.key, required this.text, this.icon, this.sicon, this.fetchtext, this.maxlines});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      controller: fetchtext,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 20,
        ),
        prefixIcon: icon,
        suffixIcon: sicon,
        hintText: text,

      ),
    );
  }
}
