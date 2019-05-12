import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded getXylo(Color color, int soundNum) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {
          playSound(soundNum);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              getXylo(Colors.red, 1),
              getXylo(Colors.orange, 2),
              getXylo(Colors.yellow, 3),
              getXylo(Colors.green, 4),
              getXylo(Colors.teal, 5),
              getXylo(Colors.blue, 6),
              getXylo(Colors.purple, 7)
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
