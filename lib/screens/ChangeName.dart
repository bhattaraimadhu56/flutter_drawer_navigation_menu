import 'package:flutter/material.dart';

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
        Image(
          image: AssetImage("images/bg_images.jpg"),
          fit: BoxFit.cover,
        ),
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
    );
  }
}
