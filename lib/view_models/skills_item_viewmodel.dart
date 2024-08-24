import 'package:portfolio_v1_02/models/skills_item_model.dart';

class SkillsItemViewmodel {
  final _menu = <SkillsItemModel>[
    SkillsItemModel(
      image: 'assets/images/skillsimages/flutter.png',
      title: 'Flutter',
      percentage: 0.9,
    ),
    SkillsItemModel(
      image: 'assets/images/skillsimages/dart.png',
      title: 'Dart',
      percentage: 0.8,
    ),
    SkillsItemModel(
      image: 'assets/images/skillsimages/fastapi.png',
      title: 'FastAPI',
      percentage: 0.8,
    ),
    SkillsItemModel(
      image: 'assets/images/skillsimages/python.png',
      title: 'Python',
      percentage: 0.8,
    ),
    SkillsItemModel(
      image: 'assets/images/skillsimages/mongodb.png',
      title: 'MongoDB',
      percentage: 0.9,
    ),
    SkillsItemModel(
      image: 'assets/images/skillsimages/salesforce.png',
      title: 'SalesForece.com',
      percentage: 0.7,
    ),
    SkillsItemModel(
      image: 'assets/images/skillsimages/ec2.png',
      title: 'Amazon EC2',
      percentage: 0.6,
    ),
  ];
  List<SkillsItemModel> get menu => _menu;
}
