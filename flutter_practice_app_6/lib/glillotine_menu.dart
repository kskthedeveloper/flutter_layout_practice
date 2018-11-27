import 'package:flutter/material.dart';
import 'dart:math';


class GuillotineMenu extends StatefulWidget {
  @override
  _GuillotineMenuState createState() => new _GuillotineMenuState();
}

class _GuillotineMenuState extends State<GuillotineMenu> with SingleTickerProviderStateMixin{

  AnimationController animationControllerMenu;
  Animation<double> animationMenu;
  Animation<double> animationTitleFadeInOut;
  _GuillotineAnimationStatus menuAnimationStatus;

  final List<Map> _menus = <Map>[
    {
      "icon": Icons.person,
      "title": "profile",
      "color": Colors.white
    },
    {
      "icon": Icons.view_agenda,
      "title": "profile",
      "color": Colors.white
    },
    {
      "icon": Icons.swap_calls,
      "title": "profile",
      "color": Colors.white
    },
    {
      "icon": Icons.settings,
      "title": "profile",
      "color": Colors.white
    }
  ];

  @override
  void initState() {
    super.initState();
    menuAnimationStatus = _GuillotineAnimationStatus.closed;

    animationControllerMenu = new AnimationController(
      duration: const Duration(
        milliseconds: 1000,
      ),
      vsync: this
    )..addListener((){});


    animationMenu = Tween(
      begin: -pi / 2.0,
      end: 0.0
    ).animate(
      CurvedAnimation(
        parent: animationControllerMenu,
        curve: Curves.bounceOut,
        reverseCurve: Curves.bounceIn,
      )
    )..addListener(() {
      setState(() {

      });
    })..addStatusListener((AnimationStatus status){
      if ( status == AnimationStatus.completed) {
        menuAnimationStatus = _GuillotineAnimationStatus.open;
      } else if (status == AnimationStatus.dismissed) {
        menuAnimationStatus = _GuillotineAnimationStatus.closed;
      } else {
        menuAnimationStatus = _GuillotineAnimationStatus.animating;
      }
    });

    animationTitleFadeInOut = Tween(
      begin: 1.0,
      end: 0.0
    ).animate(CurvedAnimation(
      parent: animationControllerMenu,
      curve: Interval(0.0, 0.5, curve: Curves.ease),
    ));
  }

  @override
  void dispose() {
    animationControllerMenu.dispose();
    super.dispose();
  }

  void _playAnimaton() {
      if(menuAnimationStatus == _GuillotineAnimationStatus.animating) {

      } else if (menuAnimationStatus == _GuillotineAnimationStatus.closed) {
        animationControllerMenu.forward().orCancel;
      } else {
        animationControllerMenu.reverse().orCancel;
      }
  }


  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;
    double angle = animationMenu.value;

    return new Transform.rotate(
      angle: angle,
      origin: Offset(24.0, 56.0),
      alignment: Alignment.topLeft,
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: screenWidth,
          height: screenHeight,
          color: Color(0xFF333333),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 32.0,
                left: 40.0,
                width: screenWidth,
                height: 24.0,
                child: Transform.rotate(
                  alignment: Alignment.topLeft,
                  origin: Offset.zero,
                  angle: pi / 2.0,
                  child: Center(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Opacity(
                        opacity: animationTitleFadeInOut.value,
                        child: Text(
                          'ACTIVITY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 32.0,
                left: 4.0,
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: _playAnimaton,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 64.0, top: 96.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: _menus.map((menuItem){
                      return ListTile(
                        leading: Icon(
                          menuItem["icon"],
                          color: menuItem["color"],
                        ),
                        title: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            menuItem['title'],
                            style: TextStyle(
                              color: menuItem['color'],
                              fontSize: 24.0
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
enum _GuillotineAnimationStatus { closed, open, animating }
