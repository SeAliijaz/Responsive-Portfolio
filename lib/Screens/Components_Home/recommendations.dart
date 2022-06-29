import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Constants/constants.dart';
import 'package:responsive_portfolio/Models/recommendation_model.dart';
import 'package:responsive_portfolio/Screens/Components_Home/recommendation_cards.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(demoRecommendationModel.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCards(
                    recommendationModel: demoRecommendationModel[index],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
