import 'package:cached_network_image/cached_network_image.dart';
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
        color: Color(0xff242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: CachedNetworkImageProvider(myDp),
            ),
            Spacer(),
            Text(
              "Muhammad Ali",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text("Flutter Developer (Android & IOS)",
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
