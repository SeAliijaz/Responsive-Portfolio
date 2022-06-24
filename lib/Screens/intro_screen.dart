import 'package:cached_network_image/cached_network_image.dart';
import "package:flutter/material.dart";
import 'package:responsive_portfolio/Constants/constants.dart';
import 'package:responsive_portfolio/Screens/resume_screen.dart';
import 'package:responsive_portfolio/Widgets/expansion_tile_text_widget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("MySelf Intro"),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///MY Display Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 99,
                  backgroundImage: CachedNetworkImageProvider(myDp),
                ),
              ),
            ),

            ///ExpansionTile
            Card(
              child: ExpansionTile(
                title: Text("Info"),
                children: [
                  ExpansionTileTextWidget(
                    icon: Icons.person,
                    headText: "Name",
                    text: "Muhammad Ali",
                  ),
                  ExpansionTileTextWidget(
                    icon: Icons.school,
                    headText: "Institute",
                    text: "University of Sahiwal",
                  ),
                  ExpansionTileTextWidget(
                    icon: Icons.edit_outlined,
                    headText: "Qualification",
                    text: "BS(Software Engineering)",
                  ),
                  ExpansionTileTextWidget(
                    icon: Icons.code,
                    headText: "Deisgnation",
                    text: "Flutter developer",
                  ),
                  ExpansionTileTextWidget(
                    icon: Icons.email,
                    headText: "Email",
                    text: "se.aliijaz@gmail.com",
                  ),
                  ExpansionTileTextWidget(
                    icon: Icons.phone,
                    headText: "Phone",
                    text: "(+92)302-4991850",
                  ),
                  ExpansionTileTextWidget(
                    icon: Icons.flag,
                    headText: "Country",
                    text: "Islamic Republic of Pakistan",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: MaterialButton(
                height: 55,
                minWidth: s.width,
                color: Theme.of(context).primaryColor,
                child: Text(
                  "See Full Resume",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return ResumeScreen();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
