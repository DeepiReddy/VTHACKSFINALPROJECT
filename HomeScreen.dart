import 'package:flutter/material.dart';
import 'package:pet/Screen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Use controller to store user value
  final _textController = TextEditingController();

  //store user input into string variable
  String petName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //input
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'What\'s your pet\'s name?',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),

            //button
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                setState(() {
                  petName = _textController.text;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(petName: petName),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
