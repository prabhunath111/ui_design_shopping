import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List customColor = <Color>[
    Color(0xff3C1FC7),
    Color(0xff241678),
  ];
  String profileAppBarTitle = 'ABOUT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(

          ),
          Positioned(
            //Place it at the top, and not use the entire screen
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              elevation: 0.0,
              title: Text('$profileAppBarTitle',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
              centerTitle: true,
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
                      print('clicked');
                    }),
              ),

              backgroundColor: Colors.transparent,
              iconTheme: new IconThemeData(color: Colors.red),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.close,color: Colors.grey,), onPressed: (){print('ok');})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
