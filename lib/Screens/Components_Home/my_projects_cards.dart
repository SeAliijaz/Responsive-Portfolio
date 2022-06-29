import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Constants/constants.dart';
import 'package:responsive_portfolio/Models/project_model.dart';
import 'package:responsive_portfolio/Screens/Components_Home/project_cards.dart';

class MyProjectsCards extends StatelessWidget {
  const MyProjectsCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: demoProjectModel.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.3,
              mainAxisSpacing: defaultPadding,
              crossAxisSpacing: defaultPadding,
            ),
            itemBuilder: (c, i) {
              return ProjectCards(
                projectModel: demoProjectModel[i],
              );
            })
      ],
    );
  }
}
