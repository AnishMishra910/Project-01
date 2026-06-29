import 'package:flutter/material.dart';

class Home extends StatelessWidget{
var nameFromLogin;
Home(this.nameFromLogin);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Profile", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
    ),
    body: Container(
      color: Colors.amberAccent,
      child: Text('Hello $nameFromLogin'),
    ),
  );
  }
}