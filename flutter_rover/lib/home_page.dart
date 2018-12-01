import 'package:flutter/material.dart';
import 'package:flutter_rover/data_row.dart';

class BodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          children: <Widget>[
            MyDataRow(),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0,),
                Text(
                  'Baker St. & Marina Boulevard, San Francisco',
                  style: TextStyle(
                    fontSize: 12.0
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            MyDataRow(),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0,),
                Text(
                  'Baker St. & Marina Boulevard, San Francisco',
                  style: TextStyle(
                      fontSize: 12.0
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            MyDataRow(),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0,),
                Text(
                  'Baker St. & Marina Boulevard, San Francisco',
                  style: TextStyle(
                      fontSize: 12.0
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}

