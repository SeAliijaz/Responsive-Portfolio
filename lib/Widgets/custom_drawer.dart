import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_portfolio/Components/area_info_text.dart';
import 'package:responsive_portfolio/Components/coding.dart';
import 'package:responsive_portfolio/Components/knowledges.dart';
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
                const Knowledges(),
                const Divider(),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text("DOWNLOAD CV",
                            style: Theme.of(context).textTheme.subtitle2),
                        const SizedBox(
                          width: defaultPadding / 2,
                        ),
                        SvgPicture.asset("assets/icon/download.svg"),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: defaultPadding),
                  color: const Color(0xff24242E),
                  child: FittedBox(
                    child: Row(
                      children: [
                        const Spacer(),
                        SvgPicture.asset("assets/icons/linkedin.svg"),
                        SvgPicture.asset("assets/icons/github.svg"),
                        SvgPicture.asset("assets/icons/twitter.svg"),
                        SvgPicture.asset("assets/icons/dribble.svg"),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
