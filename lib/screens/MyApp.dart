import 'package:flutter/material.dart';
import "./AboutPage.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Flutter App",
        style: TextStyle(
            fontSize: 44.0, fontFamily: "Arial", color: Colors.yellow),
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Container(
                padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
                alignment: Alignment.centerRight,
                color: Colors.tealAccent,
                child: Center(
                  child: Text(
                    "Drawer and Navigation",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 30.0,
                    ),
                  ),
                ),
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

                Share.share(
                    "Hi, You can share the information ");
              },
              leading: Icon(Icons.share), // give icon on left side
              title: Text("Share"), // write text here
              trailing: Icon(Icons.share_rounded), // gives icon on right side
            ),
            new Divider(
              color: Colors.tealAccent,
              thickness: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}
