import 'package:flutter/material.dart';
import 'package:flutter_layout_app_5/ui/home/PlanetRow.dart';
import 'package:flutter_layout_app_5/model/planets.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PlanetRow(planets[0]),
        PlanetRow(planets[1]),
        PlanetRow(planets[2]),
      ],
    );
  }
}
