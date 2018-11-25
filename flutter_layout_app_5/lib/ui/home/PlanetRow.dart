import 'package:flutter/material.dart';
import 'package:flutter_layout_app_5/model/planets.dart';

class PlanetRow extends StatelessWidget {

  Planet planet;

  PlanetRow(this.planet);

  static final baseTextStyle = const TextStyle(
    fontFamily: 'Poppins',
  );

  static final headerTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  static final regularTextStyle = baseTextStyle.copyWith(
    color: Color(0xffb6b2df),
    fontWeight: FontWeight.w400,
  );

  static final subHeaderTextStyle = regularTextStyle.copyWith(
    fontSize: 12.0,
  );

  Widget planetMyThumbnail() {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 16.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: Image(
        image: new AssetImage(planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );
  }

  Widget planetMyCard() {
    return Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
          color: Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(0.0, 10.0)
            )
          ]
      ),
      child: planetCardContent(),
    );
  }

  Widget _planetValue({String value, String image}) {
    return Row(
      children: <Widget>[
        Image.asset(image, height: 12.0,),
        Container(width: 8.0,),
        Text(planet.gravity, style: regularTextStyle,)
      ],
    );
  }

  Widget planetCardContent() {
    return Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 4.0,),
          Text(
            planet.name,
            style: headerTextStyle,
          ),
          Container(height: 8.0,),
          Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            height: 2.0,
            width: 18.0,
            color: Color(0xff00c6ff),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: _planetValue(
                  value: planet.distance,
                  image: 'assets/img/ic_distance.png'
                ),
              ),
              Expanded(
                child: _planetValue(
                    value: planet.gravity,
                    image: 'assets/img/ic_gravity.png'
                ),
              ),

            ],
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0
      ),
      child: Stack(
        children: <Widget>[
          planetMyCard(),
          planetMyThumbnail(),
        ],
      ),
    );
  }
}

