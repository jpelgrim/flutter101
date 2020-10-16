import 'package:flutter/material.dart';
import 'package:flutter101/audio.dart';

void main() {
  runApp(Flutter101App());
}

class Flutter101App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final audio = Audio('trumpet.mp3');
    return MaterialApp(
        title: 'Flutter 101',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter 101'),
          ),
          body: Center(
            child: GestureDetector(
              onTap: () => audio.start(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/trumpet.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
        ));
  }
}
