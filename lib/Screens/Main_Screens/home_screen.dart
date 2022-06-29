import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Screens/Components_Home/Heigh_Light/heigh_light_info.dart';
import 'package:responsive_portfolio/Screens/Home-Banner/home_banner.dart';
import 'package:responsive_portfolio/Screens/Components_Home/Models%20&%20Cards/my_projects_cards.dart';
import 'package:responsive_portfolio/Screens/Components_Home/Models%20&%20Cards/recommendations.dart';
import 'package:responsive_portfolio/Screens/Main_Screens/main_screen.dart';

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
