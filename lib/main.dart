import 'package:flutter/material.dart';
import 'package:schoolbee/frontend/homescreen.dart';
import 'package:schoolbee/frontend/loginoption.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SchoolBee',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const LoginOption(),
    );
  }
}

