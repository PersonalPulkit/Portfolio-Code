import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/view_models/projects_viewmodel.dart';
import 'package:portfolio_v1_02/widgets/custom_elevated_button.dart';

class ProjectGridview extends StatelessWidget {
  const ProjectGridview({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectsViewmodel projects = ProjectsViewmodel();
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxCrossAxisExtent = 200; // Default for small screens

        if (constraints.maxWidth > 500) {
          maxCrossAxisExtent = 250; // Medium screens
        }
        if (constraints.maxWidth > 900) {
          maxCrossAxisExtent = 300; // Large screens
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: maxCrossAxisExtent,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: projects.menu.length, // Example item count
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(projects.menu[index].title),
                subtitle: Column(
                  children: [
                    Text(
                        textAlign: TextAlign.justify,
                        projects.menu[index].description),
                    const Text(textAlign: TextAlign.justify, 'Tech-Stack: '),
                    const CustomElevatedButtonWithIcon(
                      text: 'Visit Website',
                      icon: Icon(Icons.link),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
