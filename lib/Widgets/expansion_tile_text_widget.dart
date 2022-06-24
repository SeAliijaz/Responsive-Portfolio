import 'package:flutter/material.dart';

class ExpansionTileTextWidget extends StatelessWidget {
  String? headText;
  String? text;
  IconData? icon;
  ExpansionTileTextWidget({
    Key? key,
    this.headText,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon ?? Icons.abc),
      title: Text(headText ?? "headText"),
      trailing: Text(text ?? "text"),
    );
  }
}
