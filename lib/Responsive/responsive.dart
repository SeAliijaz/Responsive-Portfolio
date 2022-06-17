import 'package:flutter/cupertino.dart';

class ResponsiveSize {
  ///isMobile
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 690;
  }

  ///isTablet
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 850 &&
        MediaQuery.of(context).size.width >= 690;
  }

  ///isDesktop
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width < 1500 &&
        MediaQuery.of(context).size.width >= 850;
  }

  ///IsWideDesktop
  static bool isWideDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1500;
  }
}
