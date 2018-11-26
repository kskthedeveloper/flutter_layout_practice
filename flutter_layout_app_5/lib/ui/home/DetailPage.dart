import 'package:flutter/material.dart';
import 'package:flutter_layout_app_5/model/planets.dart';
import 'package:flutter_layout_app_5/ui/home/PlanetRow.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Container(
//        constraints: BoxConstraints.expand(),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(planet.name),
//            Hero(
//              tag: "planet-hero-${planet.id}",
//              child: Image.asset(
//                planet.image,
//                width: 96.0,
//                height: 96.0,
//              ),
//            ),
//            Center(
//              child: RaisedButton(
//                onPressed: () => Navigator.pop(context),
//                child: Text('<<< Go Back <<<'),
//              ),
//            )
//          ],
//        ),
//      )
//    );
//  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      )
    );
  }

  Container _getBackground() {
   return Container(
     child: Image.network(
       planet.picture,
       fit: BoxFit.cover,
       height: 300.0,
     ),
     constraints: BoxConstraints.expand(height: 300.0),
   );
  }

  Container _getGradient() {
   return Container(
     margin: EdgeInsets.only(top: 190.0),
     height: 110.0,
     decoration: BoxDecoration(
       gradient: LinearGradient(
         colors: [
           Color(0x00736AB7),
           Color(0xFF736AB7),
         ],
         stops: [0.0, 0.9],
         begin: FractionalOffset(0.0, 0.0),
         end: FractionalOffset(0.0, 1.0),
       )
     ),
   );
  }

  Widget _getContent() {
   return ListView(
     padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
     children: <Widget>[
      PlanetRow (
        planet,
        horizontal: false,
      ),
       Container(
         padding: EdgeInsets.symmetric(horizontal: 32.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text('OVERVIEW', style: PlanetRow.headerTextStyle,),
             Sepator(),
             Text(planet.description, style: PlanetRow.subHeaderTextStyle,)

           ],
         ),
       )
     ],
   );
  }

  Container _getToolbar(BuildContext context) {
   return Container(
     margin: EdgeInsets.only(
       top: MediaQuery.of(context).padding.top
     ),
     child: BackButton(color: Colors.white),
   );
  }
}


class Sepator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 2.0,
      width: 18.0,
      color: Color(0xff00c6ff)
    );
  }
}
