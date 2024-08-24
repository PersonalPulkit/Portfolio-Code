import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/widgets/project_gridview.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
          const Text('Projects, Clients & Startups'),
          Container(
            height: size.height * 0.8,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: size.width * 0.05,
            ),
            child: const ProjectGridview(),
          ),
        ],
      ),
    );
  }
}
