import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Drawer(
          child: new ListView(
            children: <Widget>[
              new DrawerHeader(

                child: new Text("DRAWER HEADER.."),
                decoration: new BoxDecoration(color: Colors.orange),
              ),
              new ListTile(
                title: new Text("Item => 1"),
                onTap: () {
//                  Navigator.pop(context);
//                  Navigator.push(context,
//                      new MaterialPageRoute(builder: (context) => new HomePage()));
                },
              ),
            ],
          )),
    );
  }
}

