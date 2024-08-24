import 'package:flutter/material.dart';

class AnimatedLinearProgressIndicator extends StatefulWidget {
  AnimatedLinearProgressIndicator(
      {super.key,
      required this.percentage,
      required this.title,
      this.image,
      required this.size});
  final double percentage;
  final String title;
  final String? image;
  final Size size;

  @override
  State<AnimatedLinearProgressIndicator> createState() =>
      _AnimatedLinearProgressIndicatorState();
}

class _AnimatedLinearProgressIndicatorState
    extends State<AnimatedLinearProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.size.height * 0.03),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: widget.percentage),
        duration: const Duration(seconds: 2),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    widget.image!,
                    height: widget.size.height * 0.05,
                    width: widget.size.width * 0.05,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    width: widget.size.width * 0.03,
                  ),
                  Text(
                    widget.title,
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              SizedBox(
                height: widget.size.height * 0.01,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}
