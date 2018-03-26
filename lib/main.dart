import 'package:flutter/material.dart';

void main() {
  runApp(new StyleMeUpApp());
}

class StyleMeUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Friendlychat',
      home: new NamePage(),
    );
  }
}

class GenderPage extends StatefulWidget {
  @override
  GenderPageState createState() => new GenderPageState();
}

class GenderPageState extends State<GenderPage> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('This is my new text')
      ),
    );
  }
}

class NamePage extends StatefulWidget {
  @override
  NamePageState createState() => new NamePageState();
}

class NamePageState extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StyleMeUp"),
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      body: new Container(
        color: Colors.green,
        child: new TextField(),
      )
    );
  }
}