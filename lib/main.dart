import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      ),
    );

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        drawer: new Drawer(
            child: ListView(children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.deepOrange,
                Colors.orangeAccent,
              ]),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {},
          ),
        ])),
        body: Stack(
          children: <Widget>[
            Positioned(
              child: AppBar(
                backgroundColor: Colors.transparent,
//                    elevation: 2.0,
                brightness: Brightness.light,
                leading: IconButton(
                    padding: EdgeInsets.all(15.0),
                    icon: new Image.asset('images/drawer.png'),
                    onPressed: () => _scaffoldKey.currentState.openDrawer()),
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.person_outline, color: Colors.white),
                      SizedBox(width: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.shopping_cart),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(top: 60.0),
                      height: MediaQuery.of(context).size.height * 0.3,
//                  width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'images/shoe.jpeg',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Featured',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 12.0),
                                    Text(
                                      'Nike SB Zoom Stefan\nJanoski Canvas RM',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 80.0),
                                height: 100.0,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 28.0),
                                      height: 47.0,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0)),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: <Color>[
                                            Color(0xFF3C1FC7),
                                            Color(0xFF241678)
                                          ],
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Nice',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.12,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 30.0, top: 20.0),
                                        height: 50.0,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 14.0, top: 8.0),
                                          child: Row(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    'days',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 10.0),
                                                  ),
                                                  SizedBox(
                                                    height: 2.0,
                                                  ),
                                                  Text(
                                                    '14',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 2.0),
                                                child: Text(
                                                  ':',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.0),
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    'hours',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 10.0),
                                                  ),
                                                  SizedBox(
                                                    height: 2.0,
                                                  ),
                                                  Text(
                                                    '22',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 2.0),
                                                child: Text(
                                                  ':',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.0),
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    'minutes',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 10.0),
                                                  ),
                                                  SizedBox(
                                                    height: 2.0,
                                                  ),
                                                  Text(
                                                    '20',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 2.0),
                                                child: Text(
                                                  ':',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.0),
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    'seconds',
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 10.0,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 2.0,
                                                  ),
                                                  Text(
                                                    '51',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
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
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      height: 60.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'High School',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Universities',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            'Organizations',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                              Color(0xFF3C1FC7),
                              Color(0xFF241678)
                            ])),
                        child: Text(
                          'High School List',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 16.0,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Image.asset('images/shoe1.jpeg'),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8.0),
                          height: 55.0,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF3C1FC7),
                                  Color(0xFF241678)
                                ]),
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, top: 8.0),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'days',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10.0),
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(
                                      '14',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Text(
                                    ':',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'hours',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10.0),
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(
                                      '22',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Text(
                                    ':',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'minutes',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10.0),
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Text(
                                    ':',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'seconds',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(
                                      '51',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
