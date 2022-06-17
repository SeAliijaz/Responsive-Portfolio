import 'dart:html';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_portfolio/Models/qualification_model.dart';
import 'package:responsive_portfolio/Models/skills_model.dart';
import 'package:responsive_portfolio/Responsive/responsive.dart';
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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        "Qualification",
                        style: GoogleFonts.salsa(
                          textStyle: const TextStyle(
                            fontSize: 20.5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: qualificationModel.length,
                          itemBuilder: (BuildContext context, int i) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                      qualificationModel[i].url!),
                                )),
                                height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      color: Colors.black54,
                                      child: Column(
                                        children: [
                                          Text(
                                            qualificationModel[i].schoolName!,
                                            style: GoogleFonts.salsa(
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            qualificationModel[i].degreeName!,
                                            style: GoogleFonts.salsa(
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            qualificationModel[i].session!,
                                            style: GoogleFonts.salsa(
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            qualificationModel[i].scores!,
                                            style: GoogleFonts.salsa(
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            qualificationModel[i].percentage!,
                                            style: GoogleFonts.salsa(
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(height: 20),
                    ResponsiveSize.isWideDesktop(context) ||
                            ResponsiveSize.isDesktop(context)
                        ? Container(
                            constraints: const BoxConstraints(
                              minHeight: 300,
                              maxHeight: 1000,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text("data"),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(20.0),
                                    child: const Text("Food List"),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Column(
                            children: [
                              Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      "SKILLS",
                                      style: GoogleFonts.salsa(
                                        textStyle: const TextStyle(
                                          fontSize: 20.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: skillsModel.map((e) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Container(
                                            height: 200,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                            ),
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    e.language!,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  Text(
                                                    e.experience!,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  Text(
                                                    e.projects!,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.all(20.0),
                                child: const Text("Food List"),
                              ),
                            ],
                          ),
                    Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        minHeight: 75,
                      ),
                      color: Colors.red,
                      child: const Center(child: Text("Adds")),
                    ),
                    ResponsiveSize.isWideDesktop(context) ||
                            ResponsiveSize.isDesktop(context)
                        ? Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                right: 20,
                              ),
                              color: Colors.black,
                              child: const Center(child: Text("Some Ads Here")),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
