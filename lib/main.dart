import 'package:flutter/material.dart';
// import './screens/AboutPage.dart';
import './screens/MyApp.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Madhu Flutter App",
    home:MyApp(),
    // home: AboutPage(), // import the MYApp function from another screen page
    // theme: ThemeData(
    //   // primarySwatch: Colors.teal,
    // ).dark(),
    // theme: ThemeData.dark(),
  ));
}
