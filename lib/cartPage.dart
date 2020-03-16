
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            //Place it at the top, and not use the entire screen
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              elevation: 0.0,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Color(0xFF3C1FC7), Color(0xFF241678)
                        ]
                    ),
                    shape: BoxShape.circle,
                  ),
                    child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                        onPressed: (){
                      print('clicked');
                    })),
              ),
              backgroundColor: Colors.transparent,
              iconTheme: new IconThemeData(color: Colors.red),
              actions: <Widget>[

              ],
            ),
          ),
          ListView(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                padding: EdgeInsets.only(left: 8.0),
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                child:Text('Buy Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Image.asset('images/shoe1.jpeg'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.023),
              Padding(
                padding: const EdgeInsets.only(left:16.0, right:8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[

                        Text('Nike Max Dia',style: TextStyle(color: Colors.black54,fontSize: 24.0,fontWeight: FontWeight.bold),),

                        Container(
                          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.01),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF3E2ECA),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.remove,color: Colors.white,size: 10.0,),
                                  )),
                              Card(elevation:1.0,child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Qty   1',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22.0),),
                              ),),
                              Container(
                                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.01),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF3E2ECA),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.add,color: Colors.white,size: 10.0),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Size',style: TextStyle(color: Colors.grey,fontSize: 16.0),),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
//                        Icon(Icons.remove,color: Colors.grey,),
//                        Text('M', style: TextStyle(color: Colors.grey),)

                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
