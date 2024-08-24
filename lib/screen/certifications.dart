import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/widgets/certifications_gridview.dart';

class Certifications extends StatelessWidget {
  const Certifications({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.95,
      width: size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: size.width * 0.05,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Certifications'),
          Container(
            height: size.height * 0.8,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: size.width * 0.05,
            ),
            child: const CertificationsGridview(),
          ),
        ],
      ),
    );
  }
}
