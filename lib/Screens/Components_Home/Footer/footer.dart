import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_portfolio/Constants/constants.dart';
import 'package:responsive_portfolio/Responsive/responsive_size_class.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;

    return Container(
      height: Responsive.isMobile(context) ? 120 : 180,
      width: s.width,
      child: Column(
        mainAxisAlignment: Responsive.isMobile(context)
            ? MainAxisAlignment.end
            : MainAxisAlignment.end,
        children: [
          ///FooterIcons
          Responsive.isMobile(context) ? SizedBox() : FooterIcons(),
          SizedBox(height: defaultPadding / 2),

          ///Footer Texts
          Text(
            "Copyright ©2022, All Rights Reserved.",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Responsive.isMobile(context)
                ? null
                : Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: defaultPadding / 2),

          Text(
            "Developed by Ali ijaz",
            style: Responsive.isMobile(context)
                ? null
                : Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: defaultPadding / 2),
        ],
      ),
    );
  }
}

class FooterIcons extends StatelessWidget {
  const FooterIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      width: Responsive.isDesktop(context) || Responsive.isTablet(context)
          ? 400
          : double.infinity,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/linkedin.svg",
                height: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/github.svg",
                height: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/twitter.svg",
                height: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/dribble.svg",
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
