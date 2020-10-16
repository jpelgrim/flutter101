import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Flutter101App());
}

class Flutter101App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/images/trumpet.jpg',
                width: 100,
                height: 100,
              ),
            ),
          ),
        ));
  }
}
