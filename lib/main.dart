import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int? i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildkey({Color? color, int? soundNumber}) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          //create a new player
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildkey(color: Colors.red, soundNumber: 1),
                buildkey(color: Colors.orange, soundNumber: 2),
                buildkey(color: Colors.yellow, soundNumber: 3),
                buildkey(color: Colors.green, soundNumber: 4),
                buildkey(color: Colors.blue, soundNumber: 5),
                buildkey(color: Colors.indigo, soundNumber: 6),
                buildkey(color: Colors.purple, soundNumber: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
