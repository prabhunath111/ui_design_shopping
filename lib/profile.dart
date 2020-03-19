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
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: customColorWithoutGradient),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.photo_camera,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              )))
                    ],
                  )),
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
                padding: EdgeInsets.only(left: 16.0, right: 6.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: customColorWithoutGradient,
                  labelColor: Colors.black,
                  controller: _tabController,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: <Widget>[
                    Tab(text: 'ABOUT',
//                      child: Text(
//                        'ABOUT',
//                        style: TextStyle(
//                            fontSize: 12.0, fontWeight: FontWeight.bold),
//                      ),
                    ),
                    Tab(
                      text: 'NICE LIST',
                    ),
                    Tab(
                    text: 'My Designs',
                    ),
                    Tab(
                      text: 'SETTINGS',
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 16.0, right: 6.0),
                  height: MediaQuery.of(context).size.height * 0.001,
                  width: double.infinity,
                  color: Colors.grey),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child:
                    TabBarView(controller: _tabController, children: <Widget>[
                  _customTabBarForAbout(),
                  _customTabBarForNiceList(),
                  _customTabBarForMyDesigns(),
                  _customTabBarForSettings(),
                ]),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: customColor)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 6.0, top: 0.0, right: 6.0, bottom: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.home, color: Colors.white),
                              onPressed: () {}),
                          Text(
                            'Home',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.search, color: Colors.white),
                              onPressed: () {}),
                          Text(
                            'Home',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.favorite_border,
                                  color: Colors.white),
                              onPressed: () {}),
                          Text(
                            'Nice',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.person_outline,
                                  color: Colors.white),
                              onPressed: () {}),
                          Text(
                            'Profile',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.dehaze, color: Colors.white),
                              onPressed: () {}),
                          Text(
                            'More',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
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

  Widget _customTabBarForAbout() {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 16.0, right: 6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Text('Edit description', style: TextStyle(color: Colors.grey)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
                  'Simplifying interfaces and experiences\nsince 2012.    Feel free to contact me for\nfull-time or feelance work opportunities.',
                  style: TextStyle(
                      color: Colors.black87, fontSize: 18.0, height: 1.4)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text('Gender', style: TextStyle(color: Colors.grey)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text('Male, 27', style: TextStyle(color: Colors.black87)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text('Country', style: TextStyle(color: Colors.grey)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text('California, united States',
                  style: TextStyle(color: Colors.black87)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ],
          ),
        )
      ],
    );
  }

  Widget _customTabBarForNiceList() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Stack(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.025),
                child: Image.asset('images/shoe2.jpeg')),
            _timeLeft('14','22','20','51')
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left:8.0,top: 8.0,right: 8.0,bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Nike Max Dia', style: TextStyle(color: Colors.grey, fontSize: 22.0, fontWeight: FontWeight.bold)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: _niceRow('341','    10 Left for Pre-Order  ',Colors.red),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.045,),
        Stack(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
                child: Image.asset('images/shoe.jpg')),
            _timeLeft('08','30','40','51'),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.010),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Nike Airwave Blue', style: TextStyle(color: Colors.grey, fontSize: 22.0, fontWeight: FontWeight.bold)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: _niceRow('291','    10 Left for Pre-Order  ',Colors.red),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.042)

      ],
    );
  }

  Widget _customTabBarForMyDesigns() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        Image.asset('images/shoe1.jpeg'),
        Padding(
          padding: const EdgeInsets.only(left:10.0, top:12.0),
          child: Text('Nike Max Dia', style: TextStyle(color: Colors.grey, fontSize: 22.0, fontWeight: FontWeight.bold)),
        ),
         Container(
           margin: EdgeInsets.only(left:18.0,top: 18.0,right: 8.0),
             child: _niceRow('341', '', Colors.red)),

        SizedBox(height: MediaQuery.of(context).size.height*0.07),
        Stack(
          children: <Widget>[
            Image.asset('images/shoe2.jpeg'),
            Positioned(
                right: 0.0,
                top: 0.0,
                child: Container(
                  padding: EdgeInsets.only(left:10.0, top: 5.0, right: 10.0, bottom: 5.0),
                  margin: EdgeInsets.only(top: 18.0,right: 8.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: customColor),
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Text('Pre-Order', style: TextStyle(color: Colors.white,fontSize: 16.0),),
                )
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left:10.0, top:12.0),
          child: Text('Nike Airwave Blue', style: TextStyle(color: Colors.grey, fontSize: 22.0, fontWeight: FontWeight.bold)),
        ),
        Container(
            margin: EdgeInsets.only(left:18.0,top: 18.0,right: 8.0),
            child: _niceRow('291', '', Colors.red)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.045,)
      ],
    );

  }

  Widget _customTabBarForSettings() {
    return Image.asset(
      'images/sachin.jpg',
      fit: BoxFit.fill,
    );
  }

  _timeLeft(String days, String hours, String minutes, String seconds ) {
    return Container(
      margin: EdgeInsets.only(left: 16.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: customColor,
          ),
          borderRadius: BorderRadius.circular(28.0)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, top: 8.0, right: 16.0, bottom: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'days',
                    style: TextStyle(color: Colors.white, fontSize: 8.0),
                  ),
                  Text(
                    '$days',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    ' ',
                    style: TextStyle(color: Colors.white, fontSize: 8.0),
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'hours',
                    style: TextStyle(color: Colors.white, fontSize: 8.0),
                  ),
                  Text(
                    '$hours',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    ' ',
                    style: TextStyle(color: Colors.white, fontSize: 8.0),
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'minutes',
                    style: TextStyle(color: Colors.white, fontSize: 8.0),
                  ),
                  Text(
                    '$minutes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    ' ',
                    style: TextStyle(color: Colors.white, fontSize: 8.0),
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'seconds',
                    style: TextStyle(color: Colors.white, fontSize: 8.0),
                  ),
                  Text(
                    '$seconds',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _niceRow(String numberOfNices, String shoesLeft, Color colorFavorite) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
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
                    '$numberOfNices  ',
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
          Text('$shoesLeft',
              style: TextStyle(color: Colors.grey, fontSize: 11.0)),
          Expanded(child: SizedBox(),),
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
      );

  }
}
