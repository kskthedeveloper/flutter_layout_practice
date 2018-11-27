import 'package:flutter/material.dart';
import 'page.dart';
import 'glillotine_menu.dart';

class Guillotine extends StatefulWidget {
  @override
  _GuillotineState createState() => new _GuillotineState();
}

class _GuillotineState extends State<Guillotine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Container(
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Page(),
            GuillotineMenu(),
          ],
        ),
      ),
    );
  }
}
