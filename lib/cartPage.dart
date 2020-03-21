import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_design_shopping/colorStyle.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List customColor = ColorStyle.customColor;
  Color customColorWithoutGradient = ColorStyle.customColorWithoutGradient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                  padding: EdgeInsets.only(left: 16.0),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  child: Text(
                    'Buy Now',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Image.asset('images/shoe1.jpeg'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.023),
              cartDetails('M 8.5'),
              cartDetails('F 8'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.016),
              Container(
                height: MediaQuery.of(context).size.height * 0.001,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 16.0, right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Shipping address',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(
                              Icons.local_shipping,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '6/41 Pandurangon vittal\nst-2, salem-6.',
                            style: TextStyle(height: 1.5, color: Colors.grey),
                          ),
                          Expanded(child: SizedBox()),
                          Card(
                            elevation: 0.0,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0,
                                      top: 6.0,
                                      right: 16.0,
                                      bottom: 6.0),
                                  child: Text(
                                    'CHANGE',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                height: MediaQuery.of(context).size.height * 0.001,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Price details',
                        style: TextStyle(
                            height: 1.5,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15.0,
                              // has the effect of softening the shadow
                              spreadRadius: 0.0,
                              // has the effect of extending the shadow
                              offset: Offset(
                                5.0, // horizontal, move right 10
                                10.0, // vertical, move down 10
                              ),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 16.0, right: 8.0, bottom: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Nike Air Max ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                '- - - - - - - - - - - - - - - - - - - - -\$70x2',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: 16.0),
                    Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Subtotal           \$140.00',
                                style: TextStyle(color: Colors.grey)),
                            Text('Shipping          \$9.00',
                                style: TextStyle(color: Colors.grey)),
                            Text('Taxes               \$10.00',
                                style: TextStyle(color: Colors.grey)),
                            Text('Total                 \$149.00',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: MediaQuery.of(context).size.height * 0.001,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Referral Link',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                margin: EdgeInsets.only(left: 16, right: 12.0),
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0,
                      // has the effect of softening the shadow
                      spreadRadius: 0.0,
                      // has the effect of extending the shadow
                      offset: Offset(
                        5.0, // horizontal, move right 10
                        10.0, // vertical, move down 10
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.035),
              Container(
                height: MediaQuery.of(context).size.height * 0.075,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: customColor),
                ),
                child: Center(
                    child: Text(
                  'CONTINUE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                )),
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
                      Navigator.pop(context);
                    }),
              ),
              backgroundColor: Colors.transparent,
              iconTheme: new IconThemeData(color: Colors.red),
              actions: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }

  Widget cartDetails(String details) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Nike Max Dia',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(child: SizedBox()),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.01),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: customColor)                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 10.0,
                          ),
                        )),
                    Card(
                      elevation: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Qty   1',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.01),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: customColor)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Icon(Icons.add, color: Colors.white, size: 10.0),
                        )),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Size',
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.09),
              Icon(
                Icons.remove,
                color: Colors.grey,
              ),
              Text(
                "$details",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.18, top: 5.0),
            child: Text(
              'Remove',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                  fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
