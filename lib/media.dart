import 'package:flutter/material.dart';

class media extends StatefulWidget {
  @override
  _mediaState createState() => _mediaState();
}

class _mediaState extends State<media> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  "asset/lg.png",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130.0),
                  child: Image.asset(
                    "asset/story-top-cloud.png",
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: Center(
                    child: Text(
                      '"The Happiest of All"',
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 22.0,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                )
              ],
            ),
            SafeArea(
              child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "asset/ic_close.png",
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Image.asset(
                                  "asset/download_unsubscribed.png",
                                  width: 60,
                                  height: 60,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "asset/ic_pause.png",
                                width: 200,
                                height: 200,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "asset/ic_star.png",
                                width: 70,
                                height: 70,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Image.asset(
                                  "asset/ic_share.png",
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        "asset/songbar.png",
                        width: 350.0,
                      )
                    ],
                  )),
            ),
            Image.asset("asset/story-bottom-cloud.png"),
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
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => media()));
                        // },
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
                                padding:
                                    EdgeInsets.only(top: 110.0, left: 70.0),
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
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => media()));
                        // },
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
                                padding:
                                    EdgeInsets.only(top: 110.0, left: 70.0),
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
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => media()));
                        // },
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
                                padding:
                                    EdgeInsets.only(top: 110.0, left: 70.0),
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
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => media()));
                        // },
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
                                padding:
                                    EdgeInsets.only(top: 110.0, left: 70.0),
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
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => media()));
                        // },
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
                                padding:
                                    EdgeInsets.only(top: 110.0, left: 70.0),
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
      )),
    );
  }
}
