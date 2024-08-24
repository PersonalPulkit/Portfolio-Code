import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/view_models/skills_item_viewmodel.dart';
import 'package:portfolio_v1_02/widgets/knowledge.dart';

import '../widgets/skill_progress.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    SkillsItemViewmodel skills = SkillsItemViewmodel();
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: size.width * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.only(
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              width: size.width * 0.45,
              child: Card(
                child: ListTile(
                  title: const Text('Skills'),
                  subtitle: ListView.builder(
                    itemCount: skills.menu.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return AnimatedLinearProgressIndicator(
                        percentage: skills.menu[index].percentage,
                        title: skills.menu[index].title,
                        image: skills.menu[index].image,
                        size: size,
                      );
                    },
                  ),
                ),
              )),
          Container(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            width: size.width * 0.45,
            child: Card(
              child: ListTile(
                title: const Text('Knowledge Base'),
                subtitle: Knowledge(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
