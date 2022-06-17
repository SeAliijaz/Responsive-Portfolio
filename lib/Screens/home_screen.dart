import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [],
      ),
    );
  }
}
