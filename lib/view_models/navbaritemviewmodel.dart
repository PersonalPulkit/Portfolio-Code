import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/screen/certifications.dart';
import 'package:portfolio_v1_02/screen/skills.dart';

import '../models/navbaritemmodel.dart';
import '../screen/about.dart';
import '../screen/contact.dart';
import '../screen/home.dart';
import '../screen/projects.dart';
import '../screen/services.dart';

class NavBarItemViewModel {
  final _menu = <NavBarItemModel>[
    NavBarItemModel(
      icon: const Icon(Icons.home),
      item: 'Home',
      widget: const Home(),
    ),
    NavBarItemModel(
      icon: const Icon(Icons.work),
      item: 'Skills',
      widget: const Skills(),
    ),
    // NavBarItemModel(
    //   icon: Icon(Icons.info),
    //   item: 'About',
    //   widget: About(),
    // ),
    NavBarItemModel(
      icon: const Icon(Icons.create),
      item: 'Projects',
      widget: const Projects(),
    ),
    NavBarItemModel(
      icon: const Icon(Icons.note),
      item: 'Certifications',
      widget: const Certifications(),
    ),
    // NavBarItemModel(
    //   icon: Icon(Icons.design_services),
    //   item: 'Services',
    //   widget: Services(),
    // ),
    // NavBarItemModel(
    //   icon: Icon(Icons.design_services),
    //   item: 'Achievements',
    //   widget: Achievements(),
    // ),
    NavBarItemModel(
      icon: const Icon(Icons.phone),
      item: 'Contact',
      widget: const Contact(),
    ),
  ];
  List<NavBarItemModel> get menu => _menu;
}
