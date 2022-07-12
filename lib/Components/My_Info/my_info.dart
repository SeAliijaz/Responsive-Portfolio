import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Constants/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/my_pic.jpg"),
            ),
            Spacer(),
            Text(
              "Muhammad Ali",
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text("Flutter Developer (Android & IOS)",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.w200,
                )),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
