import 'package:flutter/material.dart';

class AddEntryDialog extends StatefulWidget {
  @override
  AddEntryDialogState createState() => new AddEntryDialogState();
}

class AddEntryDialogState extends State<AddEntryDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E2ECA3E2ECA).withOpacity(0.5),
        body: Center(child: Text('check!',style: TextStyle(color: Colors.white),),)
    );
  }
}