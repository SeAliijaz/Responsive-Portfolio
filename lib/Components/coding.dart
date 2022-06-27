import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Components/animatedCircularProgressIndicator.dart';
import 'package:responsive_portfolio/Constants/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: 10),
          AnimatedLinearProgessIndicator(
            label: "Flutter",
            percentage: 0.8,
          ),
          AnimatedLinearProgessIndicator(
            label: "Dart",
            percentage: 0.7,
          ),
          AnimatedLinearProgessIndicator(
            label: "C/C++",
            percentage: 0.55,
          ),
          AnimatedLinearProgessIndicator(
            label: "MySQL",
            percentage: 0.6,
          ),
        ],
      ),
    );
  }
}