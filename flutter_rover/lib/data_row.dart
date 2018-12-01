import 'package:flutter/material.dart';

class MyDataRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InfoCard();
  }
}

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 80.0,
          width: MediaQuery.of(context).size.width / 1.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0))
              ]),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 115.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        color: Colors.grey[500],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            '09:35',
                            style: TextStyle(fontSize: 22.0),
                          ),
                          Text(
                            '2 + 2 min',
                            style: TextStyle(fontSize: 13.0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4 - 115.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[200],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.blue,
                                size: 15.0,
                              ),
                              Text('Sarah Parker + 1'),
                              SizedBox(
                                width: 5.0,
                              )
                            ],
                          ),
                          Text(
                            '3.4* Air BnB',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0 / 2),
                    color: Colors.blue,
                    border: Border.all(
                      width: 2,
                      color: Colors.greenAccent
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/one.jpg'),
                        fit: BoxFit.cover)),
                margin: EdgeInsets.only(left: 90.0, top: 16.0),
              ),
              Container(
                width: 30.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  color: Colors.pink,
                ),
                child: Center(
                  child: Icon(
                    Icons.accessible,
                    size: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 5.0,
                height: 5.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.5),
                  color: Colors.pink,
                ),
                margin: EdgeInsets.only(
                  left: 250.0,
                  top: 5.0
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 80.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                '\$2.1',
                style: TextStyle(fontSize: 13.0),
              ),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0 / 2),
                    color: Colors.pink,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0))
                    ]),
                child: Icon(
                  Icons.train,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
