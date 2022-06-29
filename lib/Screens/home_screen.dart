import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Screens/Components_Home/heigh_light_info.dart';
import 'package:responsive_portfolio/Screens/Components_Home/home_banner.dart';
import 'package:responsive_portfolio/Screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainScreeen(
      children: [
        ///HomeScreen Banner
        HomeScreenBanner(),
        HeighLightInfo()
      ],
    );
  }
}
