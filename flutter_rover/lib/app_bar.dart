import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final double barHeight = 66.0;

  MyAppBar();

  final Color myColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return new Container(
      height: statusBarHeight + barHeight,
      decoration: BoxDecoration(
         color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.menu,
            color: myColor,
          ),
          Text(
            '8:20',
          ),
          Icon(
            Icons.sort,
            color: myColor,
          ),
          Icon(
            Icons.refresh,
            color: myColor,
          ),
          Icon(
            Icons.chat,
            color: myColor,
          ),
          Icon(
            Icons.notifications,
            color: myColor,
          ),
          Icon(
            Icons.more_vert,
            color: myColor,
          )
        ],
      )
    );
  }
}
