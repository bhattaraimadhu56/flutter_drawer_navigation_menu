import 'package:flutter/material.dart';
import 'package:practice/screens/Images.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({
    Key key,
    @required this.name,
    @required this.nameTextEditingController,
  }) : super(key: key);

  final String name;
  final TextEditingController nameTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Images(), //our defined images
        SizedBox(height: 15),
        // Text(
        //   "Change me",
        //   style: TextStyle(
        //       fontStyle: FontStyle.italic,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 12.5),
        // ),
        Text(
          name,
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
            keyboardType: TextInputType.text, // prefer text type from keyboard
            obscureText: true, // to hide text
            decoration: InputDecoration(
                labelText: "Name", // to show Name Label
                hintText: "Enter the name you want tochange",
                border: OutlineInputBorder()),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
