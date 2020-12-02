import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("images/bg_images.jpg"),
      fit: BoxFit.cover,
    );
    // Image(
    //     image: NetworkImage(
    //         "https://images.unsplash.com/photo-1592166759268-7b20962eb956?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80"),
    //     fit: BoxFit.contain,
    //     height: 200,
    //     width: 300),
  }
}
