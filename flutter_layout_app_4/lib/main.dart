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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home, color: Colors.black,)),
            Tab(icon: Icon(Icons.search, color: Colors.grey,)),
            Tab(icon: Icon(Icons.graphic_eq, color: Colors.grey,)),
            Tab(icon: Icon(Icons.add_circle_outline, color: Colors.grey,)),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'travelogram',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 100.0,),
                IconButton(
                  icon: Icon(Icons.notifications),
                  color: Colors.grey.shade500,
                  iconSize: 30.0,
                  onPressed: (){},
                ),
                InkWell(
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                        image: AssetImage('assets/chris.jpg'),
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey.shade200,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.location_on, color: Colors.blue),
                    iconSize: 50.0,
                    onPressed: (){},
                  ),
                  SizedBox(width: 5.0,),
                  Padding(
                    padding: EdgeInsets.only(top: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'MALDIVES TRIP 2018',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14.0
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Text(
                          'Add an update',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 50.0,),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    iconSize: 30.0,
                    onPressed: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'FROM THE COMMUNITY',
                  style: TextStyle(
                    color: Colors.grey.shade500
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                      color: Colors.blue.shade500
                  ),
                )
              ],
            ),
          ),
          _buildImageGrid(),
          _galleryDetail(),
          _buildImageGrid(),
          _galleryDetail(),
        ],
      ),
    );
  }

  Widget _buildImageGrid(){
    return Padding(
      padding: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
      child: Container(
        height: 220.0,
        child: Row(
          children: <Widget>[
            Container(
              height: 220.0,
              width: MediaQuery.of(context).size.width /2 +40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/beach1.jpg'),
                  fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(width: 2.0,),
            Column(
              children: <Widget>[
                Container(
                  height: 110.0,
                  width: MediaQuery.of(context).size.width /2 - 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/beach2.jpg'),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                SizedBox(height: 2.0,),
                Container(
                  height: 108.0,
                  width: MediaQuery.of(context).size.width /2 - 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/beach3.jpg'),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _galleryDetail() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Maui Summer 2018',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7.0,),
              Row(
                children: <Widget>[
                  Text(
                    'Teresa Soto added 52 Photos',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 11.0
                    ),
                  ),
                  SizedBox(width: 4.0,),
                  Icon(
                    Icons.cloud_circle,
                    size: 4.0,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
          SizedBox(width: 10.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 7.0,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  child: Image.asset('assets/navarrow.png'),
                ),
              ),
              SizedBox(width: 7.0,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  child: Image.asset('assets/chatbubble.png'),
                ),
              ),
              SizedBox(width: 7.0,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  child: Image.asset('assets/fav.png'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


