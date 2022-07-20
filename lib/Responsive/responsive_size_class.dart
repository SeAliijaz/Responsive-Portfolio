import 'package:flutter/material.dart';

///Using this to make responsive for web and app
class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 500 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
//////// OR YOU CAN USE THIS TO MAKE RESPONSIVE ///////////////////s

// class ResponsiveSize {
//   ///isMobile
//   static bool isMobile(BuildContext context) {
//     return MediaQuery.of(context).size.width < 690;
//   }

//   ///isTablet
//   static bool isTablet(BuildContext context) {
//     return MediaQuery.of(context).size.width < 850 &&
//         MediaQuery.of(context).size.width >= 690;
//   }

//   ///isDesktop
//   static bool isDesktop(BuildContext context) {
//     return MediaQuery.of(context).size.width < 1500 &&
//         MediaQuery.of(context).size.width >= 850;
//   }

//   ///IsWideDesktop
//   static bool isWideDesktop(BuildContext context) {
//     return MediaQuery.of(context).size.width >= 1500;
//   }
// }
