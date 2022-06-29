import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Screens/Components_Home/animated_counter.dart';
import 'package:responsive_portfolio/Screens/Components_Home/heigh_light.dart';

import '../../Constants/constants.dart';

class HeighLightInfo extends StatelessWidget {
  const HeighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: defaultPadding / 2, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 119,
              text: "K+",
            ),
            label: "Subscribers",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 52,
              text: "+",
            ),
            label: "Videos",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 30,
              text: "+",
            ),
            label: "Github Projects",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 10,
              text: "K+",
            ),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}
