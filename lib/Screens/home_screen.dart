import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Constants/constants.dart';
import 'package:responsive_portfolio/Models/project_model.dart';
import 'package:responsive_portfolio/Models/recommendation_model.dart';
import 'package:responsive_portfolio/Screens/Components_Home/heigh_light_info.dart';
import 'package:responsive_portfolio/Screens/Components_Home/home_banner.dart';
import 'package:responsive_portfolio/Screens/Components_Home/my_projects_cards.dart';
import 'package:responsive_portfolio/Screens/Components_Home/recommendations.dart';
import 'package:responsive_portfolio/Screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainScreeen(
      children: [
        ///HomeScreen Banner
        HomeScreenBanner(),

        ///Heigh Lght info
        HeighLightInfo(),

        ///Project Cards
        MyProjectsCards(),

        ///Recommendations
        Recommendations(),
      ],
    );
  }
}
