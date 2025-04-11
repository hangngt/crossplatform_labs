import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Center(
          child: Image(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/c9/4c/ce/c94ccebeb4b3c1933c308eed142ecd5c.gif')),
        ),
      )));
}
