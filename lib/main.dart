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
          body: Container(
            child: SizedBox(
              width: 100,
              height: 100,
            ),
            color: Colors.amber,
          ),
        ));
  }
}
