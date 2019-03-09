import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget myBox(Color color) {
    return Container(
      width: 40,
      height: 40,
      color: color,
    );
  }

  Widget myRow(MainAxisAlignment mainAxisAlignment) {
    return Column(
      children: <Widget>[
        Text(mainAxisAlignment.toString()),
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: <Widget>[
            myBox(Colors.lightBlue),
            myBox(Colors.green),
            myBox(Colors.purpleAccent),
          ],
        ),
      ],
    );
  }

  Widget myColumn(MainAxisAlignment mainAxisAlignment) {
    return Row(
      children: <Widget>[
        Column(
          mainAxisAlignment: mainAxisAlignment,
          children: <Widget>[
            Text(mainAxisAlignment.toString().substring("mainAxisAlignment".length+1, mainAxisAlignment.toString().length)),
            myBox(Colors.lightBlue),
            myBox(Colors.green),
            myBox(Colors.purpleAccent),
          ],
        )
      ],
    );
  }

  // For Rows
  Widget parentRow() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
            color: Colors.yellow,
            child: myRow(MainAxisAlignment.start)
        ),
        Container(
            color: Colors.yellow,
            child: myRow(MainAxisAlignment.center)
        ),
        Container(
            color: Colors.yellow,
            child: myRow(MainAxisAlignment.end)
        ),
        Container(
            color: Colors.yellow,
            child: myRow(MainAxisAlignment.spaceEvenly)
        ),
        Container(
            color: Colors.yellow,
            child: myRow(MainAxisAlignment.spaceBetween)
        ),
        Container(
            color: Colors.yellow,
            child: myRow(MainAxisAlignment.spaceAround)
        ),
      ],
    );
  }

  // For Columns
  Widget parentColumn() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              color: Colors.yellow,
              child: myColumn(MainAxisAlignment.start)
          ),
          Container(
              color: Colors.yellow,
              child: myColumn(MainAxisAlignment.center)
          ),
          Container(
              color: Colors.yellow,
              child: myColumn(MainAxisAlignment.end)
          ),
          Container(
              color: Colors.yellow,
              child: myColumn(MainAxisAlignment.spaceEvenly)
          ),
          Container(
              color: Colors.yellow,
              child: myColumn(MainAxisAlignment.spaceBetween)
          ),
          Container(
              color: Colors.yellow,
              child: myColumn(MainAxisAlignment.spaceAround)
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
// For Rows
//        body: parentRow(),
// For Columns
        body: parentColumn(),
      ),
    );
  }
}