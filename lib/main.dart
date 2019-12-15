import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SurfInformations(),
    );
  }
}

class SurfInformations extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 242, 247, 15),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-0.6, -0.9),
            child: _titleCard("Altura"),
          ),
          Align(
            alignment: Alignment(-0.9, -0.70),
            child: _card(width, height),
          ),
          Align(
            alignment: Alignment(0.65, -0.9),
            child: _titleCard("Periodo"),
          ),
          Align(
            alignment: Alignment(0.9, -0.70),
            child: _card(width, height),
          ),
          Align(
            alignment: Alignment(-0.6, -0.17),
            child: _titleCard("Vento"),
          ),
          Align(
            alignment: Alignment(-0.9, 0.2),
            child: _card(width, height),
          ),
          Align(
            alignment: Alignment(0.65, -0.17),
            child: _titleCard("Direção"),
          ),
          Align(
            alignment: Alignment(0.9, 0.2),
            child: _card(width, height),
          ),
        ],
      ),
    );


  }

  Widget _card(double width, double height){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0)),
      margin: new EdgeInsets.all(0.0),
      child: InkWell(
        splashColor: Color.fromRGBO(255, 255, 255, 100),
        child: Container(
          width: width*0.45,
          height: height*0.22,
        ),
      ),
    );
  }

  Widget _titleCard(String txt){
    return Text(
      txt,
      style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 100),
        fontSize: 30.0,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
