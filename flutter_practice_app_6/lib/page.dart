import 'package:flutter/material.dart';

class Page extends StatefulWidget {
  @override
  _PageState createState() => new _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Scaffold(
          body: Container(
            color: Color(0xFF222222),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: <Widget>[
                SizedBox(height: 90.0,),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    color: Color(0xFF333333),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text('Something'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    color: Color(0xFF333333),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    color: Color(0xFF333333),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
