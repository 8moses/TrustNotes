// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors


import 'package:flutter/material.dart';
import 'paginas/login_pagina.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
  await Firebase.initializeApp();
} catch (e) {
  print('Error initializing Firebase: $e');
}


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPagina(),
    );
  }
}
