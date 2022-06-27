import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_portfolio/Constants/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text ?? "text"),
        ],
      ),
    );
  }
}
