import 'package:assignment/media.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ui extends StatefulWidget {
  ui() : super();
  @override
  _uiState createState() => _uiState();
}

class _uiState extends State<ui> {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'asset/story1.jpg',
    'asset/story2.jpg',
    'asset/story3.jpg',
    'asset/story4.jpg',
    'asset/story5.jpg'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset("asset/home-header.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      onPressed: null)
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 1.0,
                ),
                child: Image.asset(
                  "asset/star_premium.png",
                  width: 70.0,
                  height: 120.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 51.0),
                child: Image.asset("asset/cloud-header.png"),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    height: 240.0,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    reverse: false,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    pauseAutoPlayOnTouch: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                              imgUrl,
                              fit: BoxFit.cover,
                              width: 350.0,
                              height: 200.0,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? Colors.black : Colors.grey,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "asset/logo.jpg",
                width: 100.0,
                height: 100.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Everyday Stories",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 25.0),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            height: 240.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => media()));
                      },
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "asset/story1.jpg",
                              width: 190.0,
                              height: 170.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 110.0, left: 70.0),
                              child: Image.asset(
                                "asset/ic_play.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 190.0, left: 40.0),
                            child: Text(
                              "Turtule Story",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Poppins",
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => media()));
                      },
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "asset/story2.jpg",
                              width: 190.0,
                              height: 170.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 110.0, left: 70.0),
                              child: Image.asset(
                                "asset/ic_play.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 190.0, left: 40.0),
                            child: Text(
                              "Fox Stories",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Poppins",
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => media()));
                      },
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "asset/story3.jpg",
                              width: 190.0,
                              height: 170.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 110.0, left: 70.0),
                              child: Image.asset(
                                "asset/ic_play.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 190.0, left: 40.0),
                            child: Text(
                              "Hut Stories",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Poppins",
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => media()));
                      },
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "asset/story4.jpg",
                              width: 190.0,
                              height: 170.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 110.0, left: 70.0),
                              child: Image.asset(
                                "asset/ic_play.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 190.0, left: 40.0),
                            child: Text(
                              "Kids Stories",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Poppins",
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => media()));
                      },
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "asset/story5.jpg",
                              width: 190.0,
                              height: 170.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 110.0, left: 70.0),
                              child: Image.asset(
                                "asset/ic_play.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 190.0, left: 40.0),
                            child: Text(
                              "Kids Stories",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Poppins",
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
