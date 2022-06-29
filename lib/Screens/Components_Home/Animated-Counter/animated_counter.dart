import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Constants/constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    this.value,
    this.text,
  }) : super(key: key);

  final int? value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: value),
        duration: defaultDuration,
        builder: (BuildContext context, int value, child) => Text(
              "$value$text",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: primaryColor),
            ));
  }
}
