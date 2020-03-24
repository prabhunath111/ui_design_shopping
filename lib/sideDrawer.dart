import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_design_shopping/colorStyle.dart';
import 'package:ui_design_shopping/main.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  List customColor = ColorStyle.customColor;
  Color customColorWithoutGradient = ColorStyle.customColorWithoutGradient;

  @override
  Widget build(BuildContext context) {
    double hsfs = MediaQuery.of(context).size.height;
    double wsfs = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        Container(
          height: hsfs,
          width: wsfs,
          color: Colors.white,
        ),
        Card(
          elevation: 0.0,
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: hsfs * 0.25,
                    width: wsfs,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: customColor,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: hsfs * 0.1),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 8.0, right: 12.0, bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  image: DecorationImage(
                                      image:
                                          ExactAssetImage('images/mandhana.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: wsfs * 0.035,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Elayamani',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  SizedBox(
                                    height: hsfs * 0.02,
                                  ),
                                  Text('83009 88763',
                                      style: TextStyle(color: Colors.blueAccent)),
                                ],
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20.0, top: 8.0, right: 20.0, bottom: 8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.0),
                                border: Border.all(color: Colors.blue),
                              ),
                              child: Text('EDIT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: hsfs * 0.04),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
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
              ),
              SizedBox(height: hsfs * 0.04),
              Column(
                children: <Widget>[
                  _listForSideBar(Icon(Icons.person_outline), 'Profile', false),
                  _listForSideBar(Icon(Icons.shopping_basket), 'Orders', false),
                  _listForSideBar(Icon(Icons.shopping_cart), 'Nice List', false),
                  _listForSideBar(Icon(Icons.favorite_border), 'Order History', false),
                  _listForSideBar(Icon(Icons.credit_card), 'Payment Methods', false),
                  _listForSideBar(Icon(Icons.add_location), 'Address', false),
                  _listForSideBar(Icon(Icons.notifications_none), 'Notifications', true),
                  _listForSideBar(Icon(Icons.highlight_off), 'Logout', false),
                ],
              ),
              SizedBox(height: hsfs * 0.065),

              Container(
                margin: EdgeInsets.symmetric(horizontal: wsfs*0.15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: customColor,
                  ),
                ),
                child: FlatButton(onPressed: null, child: Text('Contact Us',style: TextStyle(color: Colors.white),)),
              ),

              SizedBox(height: hsfs * 0.065),
              Container(
                alignment: Alignment.center,
                child: Container(
                  child: Text('Shipping  |  Returns  |  How It Works',style: TextStyle(color: Colors.black),),
                ),
              ),
              SizedBox(height: hsfs * 0.065),
              Container(
                alignment: Alignment.center,
                child: Container(
                  child: Text('Terms and Conditions  |  Privacy Policy',style: TextStyle(color: Colors.grey),),
                ),
              ),
              SizedBox(height: hsfs * 0.065),
            ],
          ),
        ),
        Positioned(
          //Place it at the top, and not use the entire screen
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            elevation: 0.001,
            leading: Container(
              margin: EdgeInsets.only(left: 16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.white, Colors.white]),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: customColorWithoutGradient,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  }),
            ),
            backgroundColor: Colors.transparent,
            iconTheme: new IconThemeData(color: Colors.white),
            actions: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.attach_money,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
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
    );
  }

  Widget _listForSideBar(
      Icon customIcon, String textForhere, bool isNotification) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            IconButton(icon: customIcon,color: Colors.grey, onPressed: () {}),
            Text(textForhere,style: TextStyle(color: Colors.grey),),
            Expanded(child: SizedBox()),
            (isNotification)
                ? IconButton(icon: Icon(Icons.toll,color: customColorWithoutGradient,), onPressed: () {})
                : IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15.0,), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
