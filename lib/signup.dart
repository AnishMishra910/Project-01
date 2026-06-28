import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Signup", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
    ),
    body: Container(
      color: Colors.amberAccent,
    ),
  );
  }

}