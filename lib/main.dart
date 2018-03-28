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
      body: new Center(child: new Text('This is my new text')),
    );
  }
}

class NamePage extends StatefulWidget {
  @override
  NamePageState createState() => new NamePageState();
}

class NamePageState extends State<NamePage> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width / 2;

    return new Scaffold(
      // drawer: new Drawer(
      //   child: new ListView(
      //     children: <Widget>[
      //       new UserAccountsDrawerHeader(
      //         accountName: new Text('Account Name'),
      //         accountEmail: new Text('Account Email'),
      //       ),
      //       new ListTile(
      //         leading: new Icon(Icons.favorite),
      //         title: new Text('Navbar 1'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       new ListTile(
      //         leading: new Icon(Icons.payment),
      //         title: new Text('Navbar 2'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       )
      //     ],
      //   ),
      // ),
      backgroundColor: Colors.greenAccent[700],
      appBar: new AppBar(
        title: new Text("StyleMeUp"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[700],
        elevation: 0.0,
      ),
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              width: size,
              height: size,
              decoration: new BoxDecoration(
                borderRadius:
                    new BorderRadius.all(new Radius.circular(size / 2)),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new NetworkImage(
                      'http://www.iconninja.com/files/980/282/508/female-blond-avatar-person-girl-user-woman-icon.png'),
                ),
              ),
            ),
            new Column(
              children: <Widget>[
                new Text('Username'),
                new TextField(
                  controller: _controller,
                  decoration: new InputDecoration(
                    hintText: 'Type something',
                  ),
                ),
                new RaisedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      child: new AlertDialog(
                        title: new Text('What you typed'),
                        content: new Text(_controller.text),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
