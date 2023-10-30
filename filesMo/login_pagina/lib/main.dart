// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white,
            padding: EdgeInsets.all(25),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
