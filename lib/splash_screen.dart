import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hello_curio/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context,
      MaterialPageRoute(
        builder : (context)=> MyHomePage(title: "Guff Garum",),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
        child: Center(child: Text("Guff Garum", style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w800
        ),)),
      ),
    );
  }
}