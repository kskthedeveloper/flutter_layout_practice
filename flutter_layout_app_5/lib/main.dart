import 'package:flutter/material.dart';
import 'package:flutter_layout_app_5/ui/home/GradientAppBar.dart';
import 'package:flutter_layout_app_5/ui/home/HomePageBody.dart';
import 'package:flutter_layout_app_5/ui/home/DetailPage.dart';

void main() => runApp(
  MaterialApp(
    title: "Planets",
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar('Planets'),
          HomePageBody(),
        ],
      ),
    );
  }
}



