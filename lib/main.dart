import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      title: new Text(
        'Welcome to Covertify- By Jayesh',
        style: new TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      seconds: 3,
      navigateAfterSeconds: HomePage(),
      image: Image.asset("assets/loading.png"),
      backgroundColor: Colors.white70,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}