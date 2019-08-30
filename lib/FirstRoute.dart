import 'package:flutter/material.dart'; 
import 'ButtonDemo.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Routezzz'),
      ),
      body: new Center(
        child: RaisedButton(
          child: Text('Open route button'),
          onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ButtonDemo()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}