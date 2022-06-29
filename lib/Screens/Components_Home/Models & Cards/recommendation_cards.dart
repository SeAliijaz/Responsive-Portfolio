import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Constants/constants.dart';
import 'package:responsive_portfolio/Models/recommendation_model.dart';
import 'package:responsive_portfolio/Responsive/responsive_size_class.dart';

class RecommendationCards extends StatelessWidget {
  const RecommendationCards({
    Key? key,
    required this.recommendationModel,
  }) : super(key: key);

  final RecommendationModel recommendationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isMobile(context) ? 250 : 250,
      width: Responsive.isMobile(context) ? 400 : 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendationModel.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(recommendationModel.source!),
          SizedBox(height: defaultPadding),
          Text(
            recommendationModel.text!,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
