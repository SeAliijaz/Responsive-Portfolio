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
          ///My Info
          const MyInfo(),

          ///Area Info
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

                ///Skills
                const Skills(),
                const SizedBox(height: defaultPadding),

                ///Coding %
                const Coding(),

                ///Knowledge about coding/languages
                const Knowledges(),

                ///Divider
                const Divider(),
                SizedBox(height: defaultPadding / 2),

                ///Bottom
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text("DOWNLOAD CV",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color)),
                        const SizedBox(
                          width: defaultPadding / 2,
                        ),
                        SvgPicture.asset("assets/icons/download.svg"),
                      ],
                    ),
                  ),
                ),

                Container(
                  color: Color(0xff24242E),
                  margin: EdgeInsets.only(top: defaultPadding),
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/github.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/twitter.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/dribble.svg"),
                      ),
                      Spacer(),
                    ],
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
