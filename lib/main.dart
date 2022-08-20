import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/project.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Soho"),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
      'project': (context) => MyProject()
    },
  ));
}
