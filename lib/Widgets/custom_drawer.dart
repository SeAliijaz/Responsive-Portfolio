import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> screns = {
      "Dashboard": {
        "routName": "/dash",
        "icon": Icon(Icons.dashboard),
      },
      "Qualification": {
        "routName": "/qual",
        "icon": Icon(Icons.book_sharp),
      },
      "Settings": {
        "routName": "/sett",
        "icon": Icon(Icons.settings),
      }
    };

    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 65.0,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text("Your Name"),
            ),
          ),
          ...screns.entries.map((scr) {
            return ListTile(
              leading: scr.value["icon"],
              title: Text(scr.key),
              onTap: () {
                Navigator.pushNamed(context, scr.value["routName"]);
              },
            );
          })
        ],
      ),
    );
  }
}
