import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Responsive/responsive_size_class.dart';
import 'package:responsive_portfolio/Screens/Components_Home/Footer/footer.dart';
import 'package:responsive_portfolio/Screens/Components_Home/Heigh_Light/heigh_light_info.dart';
import 'package:responsive_portfolio/Screens/Components_Home/Project_Cards/my_projects_cards.dart';
import 'package:responsive_portfolio/Screens/Components_Home/Recommendation_Cards/recommendations.dart';
import 'package:responsive_portfolio/Screens/Home-Banner/home_banner.dart';
import 'package:responsive_portfolio/Screens/Main_Screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        ///HomeScreen Banner
        HomeScreenBanner(),

        ///Heigh Lght info
        HeighLightInfo(),

        ///Project Cards
        MyProjectsCards(),

        ///Recommendations
        Recommendations(),

        ///Footer, We will Use only for Web
        Responsive.isMobile(context) ? SizedBox() : Footer()
      ],
    );
  }
}
