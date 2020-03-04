import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:ui_design_shopping/styleClass.dart';

void main() {

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    ));
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin {
  static List<StyleClass> isColorChanged = [];
  bool x = false;

  @override
  Widget build(BuildContext context) {
    TabController _tabController = new TabController(length: 3, vsync: this);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    var a = StyleClass();
    a.isColor = false;
    isColorChanged.add(a);

    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(Icons.person_outline, color: Colors.grey),
              SizedBox(width: 10.0),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
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
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'images/shoe.jpg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Featured',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 26.0),
                    ),
                    subtitle: Text(
                      'Nike SB Zoom Stefan\nJanoski Canvas RM',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.02),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color(0xff3C1FC7),
                                    Color(0xff241678),
                                  ])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Nice',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.03,bottom: MediaQuery.of(context).size.height * 0.05),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white,
                          ),
                          child: _timeLeft(
                              Colors.blue, Colors.black, FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
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
                  child: Text(
                    'High School',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
                new Tab(
                  child: Text('Universities', style: TextStyle(fontSize: 12.0)),
                ),
                new Tab(
                  child:
                      Text('Organizations', style: TextStyle(fontSize: 12.0)),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: TabBarView(controller: _tabController, children: <Widget>[
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
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          _niceRow('20', Colors.red),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      var a = StyleClass();
                      a.display();
                      var colorChange = StyleClass();
                      colorChange.isColor = true;
                      isColorChanged.add(colorChange);
                      print('check ${isColorChanged[isColorChanged.length-1].isColor}');
                      _shoeSize('7', isColorChanged[isColorChanged.length-1].isColor);
                    },
                    child: _shoeSize('7', false)),
                _shoeSize('7.5',false),
                _shoeSize('8', false),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '2',
                      style: TextStyle(
                          color: Color(0xFF3C1FC7),
                          fontWeight: FontWeight.bold),
                    ),
                    _shoeSize('8.5',true),
                    Text(
                      'X',
                      style: TextStyle(
                          color: Color(0xFF3C1FC73C1FC7),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                _shoeSize('9',false),
                _shoeSize('9.5',false)

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 12.0, right: 8.0, bottom: 8.0),
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
                _shoeSize('M',false),
                _shoeSize('F',true),
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
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  'would be nice to...\nSystem\nlike if someone isnt active for\na month\n@Mich he was here yesterday',
                  style: TextStyle(
                      height: 1.5, letterSpacing: 1.0, color: Colors.black)),
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
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('would be nice to make some',
                  style: TextStyle(
                      height: 1.5, letterSpacing: 1.0, color: Colors.black)),
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.027),
          Image.asset('images/shoe2.jpeg'),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Nike Max Dia',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
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
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('would be nice to make some',
                  style: TextStyle(
                      height: 1.5, letterSpacing: 1.0, color: Colors.black)),
//                          trailing: IconButton(icon: Icon(Icons.more_horiz),onPressed: (){print('clicked on trailing icon');},),
              trailing: Text('12:01'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
            height: MediaQuery.of(context).size.height * 0.072,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Color(0xff3C1FC7), Color(0xff241678)]),
                shape: BoxShape.circle,
                color: Colors.deepPurple,
              ),
              child: Icon(
                Icons.add,
                size: 28.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _niceRow(String shoesLeft, Color colorFavorite) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
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

  Widget _timeLeft(Color textColor1, Color textColor2, FontWeight customFontWeight) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0,right: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'days',
                style: TextStyle(fontSize: 8.0, color: textColor1),
              ),
              Text(
                '14',
                style:
                    TextStyle(fontWeight: customFontWeight, color: textColor2),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                ' ',
                style: TextStyle(fontSize: 8.0),
              ),
              Text(':',
                  style: TextStyle(
                      fontWeight: customFontWeight, color: textColor2)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'hours',
                style: TextStyle(fontSize: 8.0, color: textColor1),
              ),
              Text('22',
                  style: TextStyle(
                      fontWeight: customFontWeight, color: textColor2)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                ' ',
                style: TextStyle(fontSize: 8.0, color: Colors.blue),
              ),
              Text(':',
                  style: TextStyle(
                      fontWeight: customFontWeight, color: textColor2)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'minutes',
                style: TextStyle(fontSize: 8.0, color: textColor1),
              ),
              Text('20',
                  style: TextStyle(
                      fontWeight: customFontWeight, color: textColor2)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                ' ',
                style: TextStyle(fontSize: 8.0),
              ),
              Text(':',
                  style: TextStyle(
                      fontWeight: customFontWeight, color: textColor2)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'seconds',
                style: TextStyle(fontSize: 8.0, color: textColor1),
              ),
              Text('51',
                  style: TextStyle(
                      fontWeight: customFontWeight, color: textColor2)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _shoeSize(String size, bool isBlue) {

    print('boxcolor $isBlue');

    return Container(
      margin: EdgeInsets.only(left: 12.0, right: 12.0),
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        color: (isBlue)?Colors.deepPurple:Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            fontSize: 16.0,
            color: (isBlue)?Colors.white:Colors.grey,
          ),
        ),
      ),
    );
  }

  void _tappedWidget(String whereTapped) {
    print('Clicked on $whereTapped');
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
                margin: EdgeInsets.only(top: 20.0),
                child: Image.asset('images/shoe1.jpeg')),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xFF3C1FC7),
                        Color(0xff241678),
                      ])),
              child: _timeLeft(Colors.white, Colors.white, FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}