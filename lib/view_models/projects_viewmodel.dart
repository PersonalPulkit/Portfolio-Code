import '../models/projects_model.dart';

class ProjectsViewmodel {
  final _menu = <ProjectsModel>[
    ProjectsModel(
        image: '',
        title: 'Portfolio',
        description:
            'This is Flutter web application to show case the my projects, skills and experience. It has implementation of several features like adaptive, responsive, animated, theme, state management, 2D & 3D models and network request-response.',
        techStack: [
          'Flutter',
          'Dart',
          'FastAPI',
          'Python',
          'MongoDB',
          'Firebase'
        ],
        link: 'https://pulkitbirla.web.app'),
    ProjectsModel(
        image: '',
        title: 'Car Price Prediction',
        description:
            'This is cross-platform application to predict user\'s car price and give better experience to choose the new car to buy. It has implementation of several features like adaptive, responsive, animated, theme, state management, 2D & 3D models and network request-response.',
        techStack: [
          'Flutter',
          'Dart',
          'FastAPI',
          'Python',
          'MongoDB',
          'Firebase'
        ],
        link: ''),
  ];
  List<ProjectsModel> get menu => _menu;
}
