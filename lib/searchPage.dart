import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_shopping/colorStyle.dart';
import 'package:ui_design_shopping/drawer.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List customColor = ColorStyle.customColor;
  Color customColorWithoutGradient = ColorStyle.customColorWithoutGradient;

  @override
  Widget build(BuildContext context) {
    double hsfs = MediaQuery
        .of(context)
        .size
        .height;

    double wsfs = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              SizedBox(height: hsfs * 0.1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Search',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0)),
                    SizedBox(height: hsfs * 0.02),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                            // has the effect of softening the shadow
                            spreadRadius: 0.0,
                            // has the effect of extending the shadow
                            offset: Offset(
                              5.0, // horizontal, move right 10
                              5.0, // vertical, move down 10
                            ),
                          )
                        ],
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Search Something',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: hsfs * 0.01,),
              Container(
                margin: EdgeInsets.only(left: 16.0, top: 16.0),
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.18,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.6,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'RECENTLY VIEWED',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Card(
                              elevation: 1.0,
                              child: Wrap(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 0.0,
                                              top: 8.0,
                                              right: 4.0,
                                              bottom: 8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                width: 65.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.contain,
                                                    image: ExactAssetImage(
                                                        'images/shoe.jpg'),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    'Nike Air Max',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        fontSize: 18.0),
                                                  ),
                                                  Text('14:13:22:50',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.6,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'CLEAR',
                            style: TextStyle(
                                color: customColorWithoutGradient,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Card(
                              elevation: 1.0,
                              child: Wrap(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0.0,
                                                top: 8.0,
                                                right: 4.0,
                                                bottom: 8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  width: 65.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: ExactAssetImage(
                                                          'images/shoe2.jpeg'),
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                                  children: <Widget>[
                                                    Text(
                                                      'Nike Air Max',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          fontSize: 18.0),
                                                    ),
                                                    Text('14:13:22:50',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontWeight:
                                                            FontWeight.bold)),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 8.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('People', style: TextStyle(color: Colors.grey)),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text('CLEAR', style: TextStyle(
                                color: customColorWithoutGradient),)),
                      ],
                    ),

                    SizedBox(height: hsfs * 0.015),

                    Container(
                      height: hsfs * 0.25,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _peopleList(),_peopleList(),_peopleList(),_peopleList(),_peopleList(),_peopleList(),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
          Positioned(
            //Place it at the top, and not use the entire screen
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              elevation: 0.0,
              leading: Container(
                margin: EdgeInsets.only(left: 16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: customColor),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>SideDrawer()));
                    }),
              ),
              backgroundColor: Colors.transparent,
              iconTheme: new IconThemeData(color: Colors.red),
              actions: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _peopleList() {
    return
      Wrap(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.21,
            child:
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
                width: 100.0,
                height: 70.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: ExactAssetImage(
                          'images/user.jpg'),
                    ))),

          ),
        ],
      );
  }
}
