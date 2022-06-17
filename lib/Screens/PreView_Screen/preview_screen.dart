import 'package:flutter/material.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PreviewScreen'),
      ),
      body: Center(
        child: Text('PreviewScreen'),
      ),
    );
  }
}
