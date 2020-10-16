import 'package:flutter/material.dart';
import 'package:flutter101/audio.dart';

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
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(8.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              SoundButton(name: 'trumpet'),
            ],
          ),
        ));
  }
}

class SoundButton extends StatelessWidget {
  const SoundButton({
    Key key,
    @required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    final Audio audio = Audio('$name.mp3');
    return GestureDetector(
      onTap: () => audio.start(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(
          'assets/images/$name.jpg',
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
