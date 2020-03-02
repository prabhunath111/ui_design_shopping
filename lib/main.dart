import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin {
  final double customHeight = double.infinity;
  final double customWidth = double.infinity;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    TabController _tabController = new TabController(length: 3, vsync: this);

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
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
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
                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          bottom: 30.0, top: 20.0),
                                      height: 50.0,
                                      width: MediaQuery.of(context).size.width *
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
                                                    fontWeight: FontWeight.bold,
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
                                                    fontWeight: FontWeight.bold,
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
                                                    fontWeight: FontWeight.bold,
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
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TabBar(
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.blue,
                      labelColor: Colors.blue,
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorPadding: EdgeInsets.only(right: 40.0),
                      tabs: <Widget>[
                        new Tab(
                          child: Text('High School'),
                        ),
                        new Tab(
                          child: Text('Universities'),
                        ),
                        new Tab(
                          child: Text('Organizations'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.41,
                    width: MediaQuery.of(context).size.width,
                    child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          _customTabBar(),
                          _customTabBar(),
                          _customTabBar(),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0, top: 4.0),
                    height: MediaQuery.of(context).size.height * 0.035,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xFFC0C0C0),
                            Colors.white,
                          ]),
                    ),
                    child: Text(
                      'Faded Sky Blue',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ),
                  _niceRow('20', Colors.red),
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _shoeSize('7'),
                        _shoeSize('7.5'),
                        _shoeSize('8'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '2',
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold),
                            ),
                            _shoeSize('8.5'),
                            Text(
                              'X',
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        _shoeSize('9'),
                        _shoeSize('9.5'),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 12.0, right: 8.0, bottom: 8.0),
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Gender',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        _shoeSize('M'),
                        _shoeSize('F'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: Colors.white,
                    child: Center(
                      child: GestureDetector(
                        onTap: () => _tappedWidget('submit'),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            /*boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF98AFC7),
                                  blurRadius: 15.0, // has the effect of softening the shadow
                                  spreadRadius: 0.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    5.0, // horizontal, move right 10
                                    10.0, // vertical, move down 10
                                  ),
                                )
                              ],*/
                            borderRadius: BorderRadius.circular(40.0),
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xff3C1FC7),
                              Color(0xff241678),
                            ]),
                          ),
                          child: Center(
                              child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8.0),
                    width: double.infinity,
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: ExactAssetImage('images/shoe1.jpeg'),
                      ),
                      title: Text(
                        'Hester Freeman',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'would be nice to...\nSystem\nlike if someone isnt active for\na month\n@Mich he was here yesterday',
                          style: TextStyle(
                              height: 1.5,
                              letterSpacing: 1.0,
                              color: Colors.black)),
//                          trailing: IconButton(icon: Icon(Icons.more_horiz),onPressed: (){print('clicked on trailing icon');},),
                      trailing: Text('12:01'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8.0),
                    width: double.infinity,
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: ExactAssetImage('images/shoe1.jpeg'),
                      ),
                      title: Text(
                        'Hester Freeman',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('would be nice to make some',
                          style: TextStyle(
                              height: 1.5,
                              letterSpacing: 1.0,
                              color: Colors.black)),
//                          trailing: IconButton(icon: Icon(Icons.more_horiz),onPressed: (){print('clicked on trailing icon');},),
                      trailing: Text('12:01'),
                    ),
                  ),
                  Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24.0, bottom: 8.0),
                        child: Text(
                          'View more comments........',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                      )),
                  _createWhiteBackground(
                      MediaQuery.of(context).size.height * 0.025,
                      MediaQuery.of(context).size.width),
                  Image.asset('images/shoe2.jpeg'),
                  _createWhiteBackground(
                      MediaQuery.of(context).size.height * 0.025,
                      MediaQuery.of(context).size.width),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Nike Max Dia',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  _createWhiteBackground(
                      MediaQuery.of(context).size.height * 0.018,
                      MediaQuery.of(context).size.width),
                  _niceRow('10', Colors.grey),
                  Container(
                    padding: EdgeInsets.only(top: 8.0),
                    width: double.infinity,
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: ExactAssetImage('images/shoe1.jpeg'),
                      ),
                      title: Text(
                        'Hester Freeman',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('would be nice to make some',
                          style: TextStyle(
                              height: 1.5,
                              letterSpacing: 1.0,
                              color: Colors.black)),
//                          trailing: IconButton(icon: Icon(Icons.more_horiz),onPressed: (){print('clicked on trailing icon');},),
                      trailing: Text('12:01'),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.072,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin:Alignment.topCenter,
                          end:Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xff3C1FC7),
                            Color(0xff241678)
                          ]
                        ),
                        shape: BoxShape.circle,
                        color: Colors.deepPurple,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _customTabBar() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerRight,
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Color(0xFF3C1FC7), Color(0xFF241678)])),
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
                    colors: <Color>[Color(0xFF3C1FC7), Color(0xFF241678)]),
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 8.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'days',
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
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
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
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
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
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
    );
  }

  Widget _shoeSize(String size) {
    return Container(
      margin: EdgeInsets.only(left: 12.0, right: 12.0),
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  void _tappedWidget(String whereTapped) {
    print('Clicked on $whereTapped');
  }

  Widget _niceRow(String shoesLeft, Color colorFavorite) {
    return Container(
      padding:
          EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 4.0, right: 4.0),
            decoration: BoxDecoration(
              color: Color(0xFF3C1FC7),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '341 nices',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
          Text('$shoesLeft Left for Pre-Order',
              style: TextStyle(color: Colors.grey)),
          Icon(
            Icons.share,
            color: Color(0xFF3C1FC7),
          ),
          Icon(
            Icons.favorite_border,
            color: colorFavorite,
            size: 48.0,
          ),
        ],
      ),
    );
  }

  Widget _createWhiteBackground(double height1, double width1) {
    return Container(
      height: height1,
      width: width1,
      color: Colors.white,
    );
  }
}