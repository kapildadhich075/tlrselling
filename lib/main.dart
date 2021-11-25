import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlr/Screens/desktop_tlr.dart';
import 'package:tlr/Screens/tablet_tlr.dart';
import 'package:tlr/Screens/mobile_tlr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'The Lecture Room',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const MobileTlr(),
      tablet: const TabletTlr(),
      desktop: const DesktopTlr(),
    );
  }
}