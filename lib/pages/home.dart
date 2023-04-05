import 'package:flutter/material.dart';
import 'dart:math';

import 'package:password_generator_app/pages/error.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(left: 20)),
        Text(
          "Marvel Comics",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color.fromARGB(255, 168, 10, 10)),
        )
      ],
    );
  }
}
