import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[50],
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 230.0,
                  color: Colors.lime[100],
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 55.0, 15.0, 10.0),
                    child: Material(
                      elevation: 10.0,
                      shadowColor: Colors.grey[100],
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                          hintText: 'Search for recipes and channels',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 3.0,
                          )
                        )
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'POPULAR RECIPES',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, left: 15.0),
                    height: 125.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildCard(),
                        SizedBox(width: 10.0,),
                        _buildCard(),
                        SizedBox(width: 10.0,),
                        _buildCard(),
                        SizedBox(width: 10.0,),

                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                top: 148.0,
                left: 29,
                child: Text(
                  'THIS WEEK',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15.0,),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'November 23',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),
          ),
//          SizedBox(height: 5.0,),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 14.0),
            child: Text(
              'TODAY',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 15.0,),
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(
                  height: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(image: AssetImage('assets/breakfast.jpg'), fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 20.0
                      )
                    ]
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.0),
                      borderRadius: BorderRadius.circular(50.0)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 250.0, left: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'BEST OF',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'THE DAY',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      height: 2.0,
                      width: 80.0,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }

  Widget _buildCard() {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Container(
        width: 250.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(image: AssetImage('assets/balanced.jpg'))
              ),
              height: 125.0,
              width: 100.0,
            ),
            SizedBox(width: 20.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Grilled Chicken',
                ),
                Text(
                  'with Fruit Salad',
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 2.0,
                  width: 75.0,
                  color: Colors.orange[100],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(image: AssetImage('assets/chris.jpg'))
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      'James Oliver',
                      style: TextStyle(
                          fontSize: 12.0
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


