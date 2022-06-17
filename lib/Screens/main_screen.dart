import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_portfolio/Constants/constants.dart';
import 'package:responsive_portfolio/Models/my_info_model.dart';
import 'package:responsive_portfolio/Screens/home_screen.dart';
import 'package:responsive_portfolio/Widgets/custom_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Info'),
      ),
      drawer: const CustomDrawer(),
      body: SizedBox(
        height: s.height,
        width: s.width,
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Column(
                children: myInfoModel.map((e) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: CachedNetworkImageProvider(myDp),
                        ),
                      ),
                      Card(
                        child: ExpansionTile(
                          title: Text(
                            "My Info",
                            style: GoogleFonts.salsa(),
                          ),
                          children: [
                            const Divider(),
                            ListTile(
                              title: Text(
                                e.myName!,
                                style: GoogleFonts.salsa(),
                              ),
                              trailing: const Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              title: Text(
                                e.qualification!,
                                style: GoogleFonts.salsa(),
                              ),
                              trailing: const Icon(
                                Icons.mode_edit_outline_outlined,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              title: Text(
                                e.dev!,
                                style: GoogleFonts.salsa(),
                              ),
                              trailing: const Icon(
                                FontAwesomeIcons.laptopCode,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              title: Text(
                                e.email!,
                                style: GoogleFonts.salsa(),
                              ),
                              trailing: const Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              title: Text(
                                e.phone!,
                                style: GoogleFonts.salsa(),
                              ),
                              trailing: const Icon(
                                FontAwesomeIcons.phone,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 10,
                        ),
                        child: MaterialButton(
                          minWidth: s.width,
                          height: 55,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return const HomeScreen();
                            }));
                          },
                          child: Text(
                            "See Full Resume",
                            style: GoogleFonts.salsa(fontSize: 17.5),
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
