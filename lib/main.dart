import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.dark,
        accentColor: Colors.green
      ),
    );
  }
}




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String myText = "Hello World!";

  void _changeText(){
    setState(() {
      if(myText.startsWith('H')){
        myText = "Welcome to my app";
      }else{
        myText = "Hello World!";
      }
    });
  }


  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText , style: new TextStyle(
              color: Colors.deepPurple,
              fontSize: 22.0
            ),),
//            new RaisedButton(
//              child: new Text("click" , style: new TextStyle(
//                color: Colors.white,
//
//              ),),
//              onPressed: _changeText,
//              color: Colors.red,
//            )
          ],
        ),
      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home page"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}

