import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:scool/screens/loginscreen.dart';

class WalkthroughScreen extends StatefulWidget {
  @override
  WalkthroughScreenState createState() => WalkthroughScreenState();
}

class WalkthroughScreenState extends State<WalkthroughScreen> {
  final _imageText = [
    {
      'title': 'LEARN SOMETHING NEW EVERYDAY',
      'text': 'Browse through enthusiastic and find the right match for you!'
    },
    {
      'title': 'ALL MENTORS TO HELP YOU OUT!',
      'text': 'Browse through enthusiastic and find the right match for you!'
    },
    {
      'title': 'DISCOVER PEOPLE',
      'text': 'Browse through enthusiastic and find the right match for you!'
    }
  ];

  final imgList = [
    'assets/images/iPhone X, XS, 11 Pro – 1@3x.png',
    'assets/images/iPhone X, XS, 11 Pro – 1@3x(1).png',
    'assets/images/iPhone X, XS, 11 Pro – 2@3x.png'
  ];

  double imgIndex;

  @override
  void initState() {
    imgIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            child: Stack(children: [
              PageView(children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                      height: height,
                      viewportFraction: 1.0,
                      //enlargeCenterPage: true,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          imgIndex = index.toDouble();
                        });
                      }),
                  items: imgList
                      .map((item) => Container(
                            width: width,
                            child: Center(
                                child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              height: height,
                              width: width,
                            )),
                          ))
                      .toList(),
                )
              ]),
              Positioned(
                  bottom: height / 50,
                  right: 0,
                  child: Container(
                    width: width,
                    height: 200,
                    padding: EdgeInsets.only(left: 35, right: 35),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: ConstrainedBox(
                                constraints: BoxConstraints.expand(),
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              LoginScreen.routeName);
                                    },
                                    padding: EdgeInsets.all(0.0),
                                    child: Image.asset(
                                        'assets/images/Artboard – 7@3x.png')))),
                        Expanded(
                            child: ConstrainedBox(
                                constraints: BoxConstraints.expand(),
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              LoginScreen.routeName);
                                    },
                                    padding: EdgeInsets.all(0.0),
                                    child: Image.asset(
                                        'assets/images/Artboard – 8@3x.png')))),
                        Expanded(
                            child: ConstrainedBox(
                                constraints: BoxConstraints.expand(),
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              LoginScreen.routeName);
                                    },
                                    padding: EdgeInsets.all(0.0),
                                    child: Image.asset(
                                        'assets/images/Artboard – 9@3x.png')))),
                        Expanded(
                            child: ConstrainedBox(
                                constraints: BoxConstraints.expand(),
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              LoginScreen.routeName);
                                    },
                                    padding: EdgeInsets.all(0.0),
                                    child: Image.asset(
                                        'assets/images/Artboard – 10@3x.png')))),
                        Expanded(
                            child: ConstrainedBox(
                                constraints: BoxConstraints.expand(),
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              LoginScreen.routeName);
                                    },
                                    padding: EdgeInsets.all(0.0),
                                    child: Image.asset(
                                        'assets/images/Artboard – 11@3x.png')))),
                      ],
                    ),
                  )),
              Positioned(
                  bottom: height / 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        width: width / 1.33,
                        //height: 150,
                        child: Text(
                          _imageText[imgIndex.toInt()]['title'],
                          softWrap: true,
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                              fontSize: 30),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        width: width,
                        height: 120,
                        child: Text(
                          _imageText[imgIndex.toInt()]['text'],
                          softWrap: true,
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  )),
              Positioned(
                bottom: height / 14,
                height: 30,
                child: Container(
                  width: width,
                  child: Center(
                    child: Container(
                      width: 62,
                      child: Row(
                        children: <Widget>[
                          Center(
                            child: new DotsIndicator(
                              dotsCount: 3,
                              position: imgIndex,
                              axis: Axis.horizontal,
                              decorator: DotsDecorator(
                                color: Colors.white, // Inactive color
                                activeColor: Theme.of(context).primaryColor,
                                size: Size(8, 8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: height / 4.5,
                width: width,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 40, right: 10),
                          child: Container(
                            height: 2.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Continue with',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 40),
                          child: Container(
                            height: 2.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
