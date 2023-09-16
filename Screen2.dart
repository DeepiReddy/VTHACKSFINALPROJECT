import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {

  final String petName;

  const Screen2({required this.petName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('${petName}        '),
        ),
        backgroundColor: Color.fromARGB(255, 241, 167, 114),
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
    );
  }
}
