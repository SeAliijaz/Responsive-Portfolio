import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Constants/constants.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({
    Key? key,
    this.counter,
    this.label,
  }) : super(key: key);

  final Widget? counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter!,
        SizedBox(width: defaultPadding / 2),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
