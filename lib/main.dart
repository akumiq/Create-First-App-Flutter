import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HalSatu(),
      routes: {
        '/halSatu': (BuildContext context) => new HalSatu(),
        '/halDua': (BuildContext context) => new HalDua()  
      },
    );
  }
}

class HalSatu extends StatefulWidget {
  @override
  _HalSatuState createState() => _HalSatuState();
}

class _HalSatuState extends State<HalSatu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Hal Satu"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halDua');
              },
              child: new Text("Hal Satu"),
            )
          ],
        ),
      ),
    );
  }
}

class HalDua extends StatefulWidget {
  @override
  _HalDuaState createState() => _HalDuaState();
}

class _HalDuaState extends State<HalDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Hal Dua"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            new RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Text("Hal Dua"),
            )
          ]
        ),
      ),
    );
  }
}
