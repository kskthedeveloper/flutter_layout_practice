import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: null, color: Colors.grey,),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu, color: Colors.grey)
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.6),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Get Your Minions',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.grey,
                    )
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 15.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '201',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 60.0,),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'Hire More',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0,),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY MINIONS',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0
                  ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            primary: false,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('Dave', 'assets/img1.jpg', 'Available', 1),
              _buildCard('Stuart', 'assets/img2.jpg', 'Away', 2),
              _buildCard('Kevin', 'assets/img3.jpg', 'Away', 3),
              _buildCard('Bob', 'assets/img4.jpg', 'Available', 4),
              _buildCard('Carl', 'assets/img5.jpg', 'Available', 5),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String image, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.grey[50],
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 12.0,),
          Stack(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away' ? Colors.amber: Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 4.0,
                  )
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0,),
          Text(
            name,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0,),
          Text(
            status,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 15.0,),
          Expanded(
            child: Container(
              width: 175.0,
              decoration: BoxDecoration(
                color: status == 'Away' ? Colors.grey: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Center(
                child: Text('Request',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0): EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    );
  }
}


