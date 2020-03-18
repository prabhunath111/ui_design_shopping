import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:ui_design_shopping/cartPage.dart';
import 'package:ui_design_shopping/colorStyle.dart';
import 'package:ui_design_shopping/mySlide.dart';
import 'package:ui_design_shopping/profile.dart';

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

  List customColor = ColorStyle.customColor;
  Color customColorWithoutGradient = ColorStyle.customColorWithoutGradient;

  TextEditingController _textFieldController;
  Color containerColor1 = Colors.white;
  Color containerColor2 = Colors.white;
  Color containerColor3 = Colors.white;
  Color containerColor4 = Colors.white;
  Color containerColor5 = Colors.white;
  Color containerColor6 = Colors.white;
  bool isColor1 = false;
  bool isColor2 = false;
  bool isColor3 = false;
  bool isColor4 = false;
  bool isColor5 = false;
  bool isColor6 = false;
  bool isColorMale = false;
  bool isColorFemale = false;
  int countItem1 = 0;
  int countItem2 = 0;
  int countItem3 = 0;
  int countItem4 = 0;
  int countItem5 = 0;
  int countItem6 = 0;
  int maleItemCount = 0;
  int femaleItemCount = 0;

  changeColor1() {
    setState(() {
      isColor1 = true;
      isColor2 = false;
      isColor3 = false;
      isColor4 = false;
      isColor5 = false;
      isColor6 = false;
    });
  }

  changeColor2() {
    setState(() {
      isColor1 = false;
      isColor2 = true;
      isColor3 = false;
      isColor4 = false;
      isColor5 = false;
      isColor6 = false;
    });
  }

  changeColor3() {
    setState(() {
      isColor1 = false;
      isColor2 = false;
      isColor3 = true;
      isColor4 = false;
      isColor5 = false;
      isColor6 = false;
    });
  }

  changeColor4() {
    setState(() {
      isColor1 = false;
      isColor2 = false;
      isColor3 = false;
      isColor4 = true;
      isColor5 = false;
      isColor6 = false;
    });
  }

  changeColor5() {
    setState(() {
      isColor1 = false;
      isColor2 = false;
      isColor3 = false;
      isColor4 = false;
      isColor5 = true;
      isColor6 = false;
    });
  }

  changeColor6() {
    setState(() {
      isColor1 = false;
      isColor2 = false;
      isColor3 = false;
      isColor4 = false;
      isColor5 = false;
      isColor6 = true;
    });
  }

  closeCount() {
    setState(() {
      countItem1 = 0;
      countItem2 = 0;
      countItem3 = 0;
      countItem4 = 0;
      countItem5 = 0;
      countItem6 = 0;
      femaleItemCount = 0;
      maleItemCount = 0;
      isColor1 = false;
      isColor2 = false;
      isColor3 = false;
      isColor4 = false;
      isColor5 = false;
      isColor6 = false;
      isColorFemale = false;
      isColorMale = false;
    });
  }

  changeColorMale(bool isMale) {
    setState(() {
      isColorMale = true;
    });
  }

  changeColorFemale(bool isFemale) {
    setState(() {
      isColorFemale = true;
    });
  }

  /*maleCount(){
    setState(() {

    });
  }
  femaleCount(){
    setState(() {

    });
  }*/

  @override
  Widget build(BuildContext context) {
    TabController _tabController = new TabController(length: 3, vsync: this);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      extendBodyBehindAppBar: true,
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
      body: Stack(
        children: <Widget>[
          ListView(
            controller: ScrollController(),
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    'images/shoe.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.08),
                    child: Column(
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
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.02),
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30.0),
                                        bottomRight: Radius.circular(30.0)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: customColor,
                                    )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      'Nice',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.03,
                                    ),
                                    Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.03,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width *
                                        0.03,
                                    bottom: MediaQuery.of(context).size.height *
                                        0.05),
//                          width: MediaQuery.of(context).size.width * 0.5,
//                          height: MediaQuery.of(context).size.height * 0.08,
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
                      child: Text('Universities',
                          style: TextStyle(fontSize: 12.0)),
                    ),
                    new Tab(
                      child: Text('Organizations',
                          style: TextStyle(fontSize: 12.0)),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child:
                    TabBarView(controller: _tabController, children: <Widget>[
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (countItem1 == 0) ? '' : countItem1.toString(),
                          style: TextStyle(
                              color: customColorWithoutGradient,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              countItem2 = 0;
                              countItem3 = 0;
                              countItem4 = 0;
                              countItem5 = 0;
                              countItem6 = 0;
                              countItem1++;
                              changeColor1();
                            },
                            child: _shoeSize('7', isColor1)),
                        GestureDetector(
                          onTap: () {
                            closeCount();
                          },
                          child: Text(
                            (countItem1 == 0) ? '' : 'X',
                            style: TextStyle(
                                color: Color(0xFF3C1FC73C1FC7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (countItem2 == 0) ? '' : countItem2.toString(),
                          style: TextStyle(
                              color: customColorWithoutGradient,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              countItem1 = 0;
                              countItem3 = 0;
                              countItem4 = 0;
                              countItem5 = 0;
                              countItem6 = 0;
                              countItem2++;
                              changeColor2();
                            },
                            child: _shoeSize('7.5', isColor2)),
                        GestureDetector(
                          onTap: () {
                            closeCount();
                          },
                          child: Text(
                            (countItem2 == 0) ? '' : 'X',
                            style: TextStyle(
                                color: Color(0xFF3C1FC73C1FC7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (countItem3 == 0) ? '' : countItem3.toString(),
                          style: TextStyle(
                              color: customColorWithoutGradient,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              countItem2 = 0;
                              countItem1 = 0;
                              countItem4 = 0;
                              countItem5 = 0;
                              countItem6 = 0;
                              countItem3++;
                              changeColor3();
                            },
                            child: _shoeSize('8', isColor3)),
                        GestureDetector(
                          onTap: () {
                            closeCount();
                          },
                          child: Text(
                            (countItem3 == 0) ? '' : 'X',
                            style: TextStyle(
                                color: Color(0xFF3C1FC73C1FC7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (countItem4 == 0) ? '' : countItem4.toString(),
                          style: TextStyle(
                              color: customColorWithoutGradient,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              countItem2 = 0;
                              countItem3 = 0;
                              countItem1 = 0;
                              countItem5 = 0;
                              countItem6 = 0;
                              countItem4++;
                              changeColor4();
                            },
                            child: _shoeSize('8.5', isColor4)),
                        GestureDetector(
                          onTap: () {
                            closeCount();
                          },
                          child: Text(
                            (countItem4 == 0) ? '' : 'X',
                            style: TextStyle(
                                color: Color(0xFF3C1FC73C1FC7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (countItem5 == 0) ? '' : countItem5.toString(),
                          style: TextStyle(
                              color: customColorWithoutGradient,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              countItem2 = 0;
                              countItem3 = 0;
                              countItem4 = 0;
                              countItem1 = 0;
                              countItem6 = 0;
                              countItem5++;
                              changeColor5();
                            },
                            child: _shoeSize('9', isColor5)),
                        GestureDetector(
                          onTap: () {
                            closeCount();
                          },
                          child: Text(
                            (countItem5 == 0) ? '' : 'X',
                            style: TextStyle(
                                color: Color(0xFF3C1FC73C1FC7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (countItem6 == 0) ? '' : countItem6.toString(),
                          style: TextStyle(
                              color: customColorWithoutGradient,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              countItem2 = 0;
                              countItem3 = 0;
                              countItem4 = 0;
                              countItem5 = 0;
                              countItem1 = 0;
                              countItem6++;
                              changeColor6();
                            },
                            child: _shoeSize('9.5', isColor6)),
                        GestureDetector(
                          onTap: () {
                            closeCount();
                          },
                          child: Text(
                            (countItem6 == 0) ? '' : 'X',
                            style: TextStyle(
                                color: Color(0xFF3C1FC73C1FC7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
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
                            color: customColorWithoutGradient,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (maleItemCount == 0) ? '' : maleItemCount.toString(),
                          style: TextStyle(
                              color: customColorWithoutGradient,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              maleItemCount++;
                              changeColorMale(true);
                            },
                            child: _shoeSize('M', isColorMale)),
                        GestureDetector(
                          onTap: () {
                            closeCount();
                          },
                          child: Text(
                            (maleItemCount == 0) ? '' : 'X',
                            style: TextStyle(
                                color: Color(0xFF3C1FC73C1FC7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          (femaleItemCount == 0) ? '' : femaleItemCount.toString(),
                          style: TextStyle(
                              color: customColorWithoutGradient,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              femaleItemCount++;
                              changeColorFemale(true);
                            },
                            child: _shoeSize('F', isColorFemale)),
                        GestureDetector(
                          onTap: () {
                            closeCount();
                          },
                          child: Text(
                            (femaleItemCount == 0) ? '' : 'X',
                            style: TextStyle(
                                color: Color(0xFF3C1FC73C1FC7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
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
                    onTap: () {
                      showGeneralDialog(
                          context: context,
                          barrierDismissible: false,
                          barrierLabel: MaterialLocalizations.of(context)
                              .modalBarrierDismissLabel,
                          barrierColor: customColorWithoutGradient.withOpacity(0.95),
                          transitionDuration: const Duration(milliseconds: 200),
                          pageBuilder: (BuildContext buildContext,
                              Animation animation,
                              Animation secondaryAnimation) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.3),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.06),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.0,
                                      top: 20.0,
                                      right: 8.0,
                                      bottom: 20.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () => Navigator.pop(context),
                                          child: Container(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 4.0),
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors: customColor
                                                  ),
                                                  shape: BoxShape.circle,
                                                  color: customColorWithoutGradient),
                                              child: Icon(
                                                Icons.close,
                                                size: 22.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text('GREAT!',
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: customColorWithoutGradient,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                                height: 1.5)),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.033),
                                        GestureDetector(
                                          onTap: () => Navigator.pop(context),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: customColor),
                                                shape: BoxShape.circle,
                                                color: customColorWithoutGradient,
                                              ),
                                              child: Icon(Icons.done,
                                                  size: 40.0,
                                                  color: Colors.white)),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.033),
                                        Text('This Shoe Has Been Added To',
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: customColorWithoutGradient,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              height: 2.0,
                                            )),
                                        Text(
                                          'Your Nice List',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: customColorWithoutGradient,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          });
                    },
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
                        gradient: LinearGradient(begin:Alignment.topCenter,end:Alignment.bottomCenter,colors: customColor),
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
              Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.04),
              Image.asset('images/shoe2.jpeg'),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.03),
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
                padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: customColor),
                    shape: BoxShape.circle,
                    color: customColorWithoutGradient,
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
          Positioned(
            //Place it at the top, and not use the entire screen
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              elevation: 1.0,
              iconTheme: new IconThemeData(color: Colors.white),
              backgroundColor: Colors.transparent,
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  IconButton(icon: Icon(Icons.person_outline, color: Colors.white), onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                  }),
                    SizedBox(width: 10.0),
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: IconButton(
                            icon: Icon(Icons.shopping_cart),
                            onPressed: () {
                              Route route =
                                  MySlide(builder: (context) => CartPage());
                              Navigator.push(context, route);
                            }))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _niceRow(String shoesLeft, Color colorFavorite) {
    return Padding(
      padding: const EdgeInsets.only(left:12.0,top:8.0,right: 12.0,bottom: 8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 4.0, right: 4.0),
              decoration: BoxDecoration(
                color: customColorWithoutGradient,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, top: 3.0, right: 8.0, bottom: 3.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '341 ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'nices ',
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text('$shoesLeft Left for Pre-Order',
                style: TextStyle(color: Colors.grey)),
            Icon(
              Icons.share,
              color: customColorWithoutGradient,
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

  Widget _timeLeft(
      Color textColor1, Color textColor2, FontWeight customFontWeight) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.006),
              Text(
                '14',
                style: TextStyle(
                    fontWeight: customFontWeight,
                    color: textColor2,
                    fontSize: 22.0),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.006),
              Text(':',
                  style: TextStyle(
                      fontWeight: customFontWeight,
                      color: textColor2,
                      fontSize: 22.0)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'hours',
                style: TextStyle(fontSize: 8.0, color: textColor1),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.006),
              Text('22',
                  style: TextStyle(
                      fontWeight: customFontWeight,
                      color: textColor2,
                      fontSize: 22.0)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                ' ',
                style: TextStyle(fontSize: 8.0, color: Colors.blue),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.006),
              Text(':',
                  style: TextStyle(
                      fontWeight: customFontWeight,
                      color: textColor2,
                      fontSize: 22.0)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'minutes',
                style: TextStyle(fontSize: 8.0, color: textColor1),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.006),
              Text('20',
                  style: TextStyle(
                      fontWeight: customFontWeight,
                      color: textColor2,
                      fontSize: 22.0)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                ' ',
                style: TextStyle(fontSize: 8.0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.006),
              Text(':',
                  style: TextStyle(
                      fontWeight: customFontWeight,
                      color: textColor2,
                      fontSize: 22.0)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'seconds',
                style: TextStyle(fontSize: 8.0, color: textColor1),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.006),
              Text('51',
                  style: TextStyle(
                      fontWeight: customFontWeight,
                      color: textColor2,
                      fontSize: 22.0)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _shoeSize(String size, bool isBlue) {
    return Container(
      margin: EdgeInsets.only(left: 12.0, right: 12.0),
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        color: (isBlue) ? customColorWithoutGradient : Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            fontSize: 16.0,
            color: (isBlue) ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _customTabBar() {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            showGeneralDialog(
                context: context,
                barrierDismissible: true,
                barrierLabel:
                    MaterialLocalizations.of(context).modalBarrierDismissLabel,
                barrierColor: customColorWithoutGradient.withOpacity(0.95),
                transitionDuration: const Duration(milliseconds: 200),
                pageBuilder: (BuildContext buildContext, Animation animation,
                    Animation secondaryAnimation) {
                  return Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.05,
                              right: MediaQuery.of(context).size.width * 0.05),
                          child: Container(
                              child: Icon(
                            Icons.cancel,
                            color: Colors.white,
                            size: 28.0,
                          )),
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 24.0),
                          child: Text(
                            'School List',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22.0),
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                      Container(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Type To Find School',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 11.0),
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Stack(
                        children: <Widget>[
                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            margin: EdgeInsets.only(
                                left: 20.0,
                                right:
                                    MediaQuery.of(context).size.width * 0.23),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white),
                              child: TextField(
                                controller: _textFieldController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText: 'Search',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 0.0,
                              right: 0.0,
                              child: FlatButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  )))
                        ],
                      ),
                    ],
                  );
                });
          },
          child: Container(
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
                      colors: customColor)),
              child: Text(
                'High School List',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Stack(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  'images/shoe1.jpeg',
                  fit: BoxFit.cover,
                )),
            Container(
              margin: EdgeInsets.only(left: 16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: customColor)),
              child: _timeLeft(Colors.white, Colors.white, FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
