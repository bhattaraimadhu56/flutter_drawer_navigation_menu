import 'package:flutter/material.dart';
import "./AboutPage.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class MyApp extends StatefulWidget {
  TextEditingController nameTextEditingController = TextEditingController();
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Clicked the floating Action Button");
          },
          child: Icon(Icons.refresh),
        ),
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
                trailing: Icon(
                    Icons.access_alarm_outlined), // gives icon on right side
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
        ),
        body: SingleChildScrollView(
          // helps to prevent overflow by providing scrolling
          child: Center(
            child: Card(
                child: Column(
              children: [
                Image(
                  image: AssetImage("images/bg_images.jpg"),
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 15),
                Text(
                  "Change the test",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.5),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: nameTextEditingController,
                    textInputAction: TextInputAction
                        .next, // Move  focus and cursor to next input or tab
                    keyboardType:
                        TextInputType.text, // prefer text type from keyboard
                    obscureText: true, // to hide text
                    decoration: InputDecoration(
                        labelText: "Name", // to show Name Label
                        hintText: "Enter the name you want tochange",
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(height: 15),
                Image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1592166759268-7b20962eb956?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80"),
                    fit: BoxFit.contain,
                    height: 200,
                    width: 300),
              ],
            )),
          ),
        ));
  }
}
