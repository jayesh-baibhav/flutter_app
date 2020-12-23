import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var hours = 0, mins = 0, seconds = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doConvert() {
    setState(() {
      hours = int.parse(t1.text);
      mins = int.parse(t2.text);
      seconds = (hours*3600) + (mins*60);
    });
  }
  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        leading: Icon(Icons.home),
        title: new Text("Convertify - By Jayesh"),
      ),
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homebg.jpg"),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
            fit: BoxFit.cover,
          )
        ),
        padding: const EdgeInsets.all(40.0),
        child: Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                padding: EdgeInsets.fromLTRB(10,2,10,2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)
                ),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    labelText: "Hours",
                  ),
                  controller: t1,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 10.0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10,2,10,2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)
                ),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    labelText: "Minutes",
                  ),
                  controller: t2,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 30.0),
              ),
              new Text(
                "$seconds Seconds",
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Convert"),
                    color: Colors.greenAccent,
                    onPressed: doConvert,
                  ),
                  new MaterialButton(
                    child: new Text("Clear"),
                    color: Colors.greenAccent,
                    onPressed: doClear,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}