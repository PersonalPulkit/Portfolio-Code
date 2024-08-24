import 'package:flutter/material.dart';

class Knowledge extends StatelessWidget {
  Knowledge({super.key});
  final List<Map<String, String>> techStack = [
    {
      'category': 'Frontend',
      'content':
          'Flutter, Salesforce (Lighting Web Component, Aura, VisualForce, Web(HTML, CSS, JavaScript.))'
    },
    {'category': 'Backend', 'content': 'FastAPI.'},
    {'category': 'Database', 'content': 'MongoDB, SQL.'},
    {
      'category': 'Programming Language',
      'content': 'Dart, Python, Apex, Java, C, etc.'
    },
    {'category': 'Others', 'content': 'Cyber Security, SDLC methodology, etc.'}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: techStack.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Card(
          elevation: 1,
          child: ListTile(
            title: Text(techStack[index]['category']!),
            subtitle: Text(techStack[index]['content']!),
          ),
        );
      },
    );
  }
}
