import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("College Pet"),
          ),
          backgroundColor: Colors.pink[200],
        ),
        body: Center(
          child: Container(
            height: 625,
            width: 700,
            child: const Image(
              image:
                  AssetImage('images/GameBackground.jpeg'),
              fit: BoxFit.cover,
            )
          )
        ),
        backgroundColor: Colors.pink[100],
      ),
    ),
  );
}
