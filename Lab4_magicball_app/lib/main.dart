import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 balls App',
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: Text('Magic 8 balls'),
          backgroundColor: Colors.blueGrey,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        body: MagicBalls_Page(),
      ),
    );
  }
}

class MagicBalls_Page extends StatefulWidget {
  @override
  _MagicStatePage createState() => _MagicStatePage();
}

class _MagicStatePage extends State<MagicBalls_Page> {
  int Ballnum = 1;

  void magicball() {
    setState(() {
      // Random.nextInt(n) returns a random integer from 0 to n-1
      Ballnum = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: magicball,
              child: Image.asset('images/ball$Ballnum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
