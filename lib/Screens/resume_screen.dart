import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('ResumeScreen'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Text('ResumeScreen'),
      ),
    );
  }
}
