import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import 'AboutPage.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Container(
          //     padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
          //     alignment: Alignment.centerRight,
          //     color: Colors.tealAccent,
          //     child: Center(
          //       child: Text(
          //         "Drawer and Navigation",
          //         style: TextStyle(
          //           color: Colors.black54,
          //           fontSize: 30.0,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Madhu Sudan Bhattarai"),
            accountEmail: Text("bhattaraimadhu56@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1598547461182-45d03f6661e4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
            ),
          ),
          new Divider(
            color: Colors.tealAccent,
            thickness: 1.0,
          ),
          ListTile(
            autofocus: true,
            onTap: () {
              Navigator.pop(
                  context); // on clicking close that screen and comes back to previous page
            },
            leading: Icon(Icons.home), // give icon on left side
            title: Text("Madhu Home Page"), // write text here
            subtitle: Text("This is the home Page"),
            trailing:
                Icon(Icons.access_alarm_outlined), // gives icon on right side
          ),
          new Divider(
            color: Colors.tealAccent,
            thickness: 1.0,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                // accept context and route , we use materialPageRoute
                context,
                MaterialPageRoute(builder: (context) {
                  // builders accept context and we return our page
                  return AboutPage();
                }),
              ); // on clicking will redirect to About Us Page
            },
            leading: Icon(Icons.info), // give icon on left side
            title: Text("About Page"), // write text here
            subtitle: Text("This is the aboutus Page"),
            trailing: Icon(Icons.info_outlined), // gives icon on right side
          ),
          new Divider(
            color: Colors.tealAccent,
            thickness: 1.0,
          ),
          ListTile(
            onTap: () {
              // we will not use navigator but will use url_launch packet from pub.dev
              //https://pub.dev/packages/url_launcher/install
              //write dependencies "url_launcher: ^5.7.10" on pubspec.yaml and cmd flutter run
              //then use package at top of this page
              // import 'package:url_launcher/url_launcher.dart';
              // we can give any url path below is path of "PAW PLANET NZ"

              launch(
                  "https://play.google.com/store/apps/details?id=com.paw.planet&showAllReviews=true");
            },

            leading: Icon(Icons.star), // give icon on left side
            title: Text("Rate"), // write text here
            subtitle: Text("This is the rating Page"),
            trailing: Icon(Icons.star_outlined), // gives icon on right side
          ),
          new Divider(
            color: Colors.tealAccent,
            thickness: 1.0,
          ),
          ListTile(
            onTap: () {
              // Simliary from pub.dev search "share"
              // https://pub.dev/packages/share/install
              //write dependencies "url_launcher: ^5.7.10" on pubspec.yaml and cmd flutter run
              //then use package at top of this page
              //import 'package:share/share.dart';

              Share.share("Hi, You can share the information ");
            },
            leading: Icon(Icons.share), // give icon on left side
            title: Text("Share"), // write text here
            subtitle: Text("This is sharing tab"),
            trailing: Icon(Icons.share_rounded), // gives icon on right side
          ),
          new Divider(
            color: Colors.tealAccent,
            thickness: 1.0,
          ),
        ],
      ),
    );
  }
}
