import 'package:flutter/material.dart';
import './screens/MyApp.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner:
          false, // to remove the debug which shown in top right corner of app
      title: "Madhu Flutter App",
      home: MyApp(), // import the MYApp function from another screen page
      // home: AboutPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple, // will all colors as pernecessadry
      )

      // theme: ThemeData.dark(),
      ));
}
