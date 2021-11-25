import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tlr/Screens/home.dart';

class DesktopTlr extends StatelessWidget {
  const DesktopTlr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Home(),
        ],
      ),
    );
  }
}
