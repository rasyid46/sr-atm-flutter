// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

 

import 'package:flutter/material.dart';  

// void main() => runApp(MyApp()); 
import 'FirstRoute.dart'; 
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'zzz in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschinen Lake Campground bawah bintang',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);


    

class MyApp extends StatelessWidget {
  @override
     Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demi',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: ListView(
          children:[
             Image.asset(            
                  'images/lake.jpg',            
                    width: 600,            
                    height: 240,            
                    fit: BoxFit.cover,            
                  ),
              titleSection,
             textSection ,

             RaisedButton(
          child: Text('Open route'),
          onPressed: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => FirstRoute()),
  );
          },
        )

             
             ],
        ),
      ),
    );
  }

   

}



