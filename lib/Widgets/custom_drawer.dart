import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Components/area_info_text.dart';
import 'package:responsive_portfolio/Components/coding.dart';
import 'package:responsive_portfolio/Components/knowledge_text.dart';
import 'package:responsive_portfolio/Components/skills.dart';
import 'package:responsive_portfolio/Constants/constants.dart';
import 'package:responsive_portfolio/Components/my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const AreaInfoText(
                  title: "Residence",
                  text: "Pakistan",
                ),
                const AreaInfoText(
                  title: "City",
                  text: "Punjab, Sahiwal",
                ),
                const AreaInfoText(
                  title: "Age",
                  text: "19",
                ),
                const Skills(),
                const SizedBox(height: defaultPadding),
                const Coding(),
                Column(
                  children: [
                    const Divider(),
                    Text(
                      "Knowledge",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    const KnowledgeText(text: "Flutter"),
                    const KnowledgeText(text: "Dart"),
                    const KnowledgeText(text: "Firebase"),
                    const KnowledgeText(text: "C/C++"),
                    const KnowledgeText(text: "MySQL"),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
