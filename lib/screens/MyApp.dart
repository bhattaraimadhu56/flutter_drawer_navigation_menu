import 'package:flutter/material.dart';
import 'package:practice/screens/ChangeName.dart';

import 'MyDrawer.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // this is part of State so define here
  //define all state value here
  TextEditingController nameTextEditingController = TextEditingController();
  var name = "Change Me";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print("Clicked the floating Action Button");
            setState(() {
              name = nameTextEditingController.text;
            });
          },
          child: Icon(Icons.refresh),
        ),
        appBar: AppBar(
            title: Text(
          "Flutter App",
          style: TextStyle(
              fontSize: 44.0, fontFamily: "Arial", color: Colors.yellow),
        )),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          // helps to prevent overflow by providing scrolling
          child: Center(
            child: Card(
              child: ChangeName(
                  name: name,
                  nameTextEditingController: nameTextEditingController),
            ),
          ),
        ));
  }
}
