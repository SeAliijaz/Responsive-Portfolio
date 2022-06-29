import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Constants/constants.dart';
import 'package:responsive_portfolio/Responsive/responsive_size_class.dart';
import 'package:responsive_portfolio/Widgets/custom_drawer.dart';

class MainScreeen extends StatelessWidget {
  const MainScreeen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                );
              })),
      drawer: SideMenu(),
      body: Container(
        decoration: const BoxDecoration(),
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))

              ///Side Menu
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),
            SizedBox(width: defaultPadding / 3),
            Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
