import 'package:flutter/material.dart';
import 'package:ui_design_shopping/colorStyle.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {

  List customColor = ColorStyle.customColor;
  Color customColorWithoutGradient = ColorStyle.customColorWithoutGradient;

  String profileAppBarTitle = 'ABOUT';

  @override
  Widget build(BuildContext context) {
    TabController _tabController = new TabController(length: 4, vsync: this);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: ExactAssetImage('images/user.jpg'),
                            ))),
                    Positioned(
                        right: 0.0,
                        top: 0.0,
                        child: Icon(Icons.linked_camera,color: customColorWithoutGradient))
                  ],
                )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Victor Niculici',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Love To Wear & Dream',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        left: 8.0, top: 6.0, right: 8.0, bottom: 6.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: customColor,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      'Followers  | 112',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Container(
                    padding: EdgeInsets.only(
                        left: 8.0, top: 6.0, right: 8.0, bottom: 6.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: customColor,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      'Following  | 112',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
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
                     Tab(
                      child: Text(
                        'ABOUT',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                     Tab(
                      child:
                          Text('NICE LIST', style: TextStyle(fontSize: 12.0)),
                    ),
                     Tab(
                      child: Text(
                        'My Designs',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    Tab(
                      child: Text('SETTINGS', style: TextStyle(fontSize: 12.0)),
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
                  _customTabBar(),
                ]),
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
              title: Text(
                '$profileAppBarTitle',
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.bold),
              ),
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
//                      Navigator.pop(context);
                    }),
              ),
              backgroundColor: Colors.transparent,
              iconTheme: new IconThemeData(color: Colors.red),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _customTabBar() {
    return Image.asset(
      'images/sachin.jpg',
      fit: BoxFit.fill,
    );
  }

  void _setProfileAppBarTitle(String c) {
    setState(() {
      profileAppBarTitle = c;
    });
  }
}
