import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(colors: Colors.red, note: 1),
              BuildKey(colors: Colors.orange, note: 2),
              BuildKey(colors: Colors.yellow, note: 3),
              BuildKey(colors: Colors.green, note: 4),
              BuildKey(colors: Colors.teal, note: 5),
              BuildKey(colors: Colors.blue, note: 6)
            ],
          ),
        ),
      ),
    );
  }

  void playmusic(int number) {
    final play = new AudioCache();
    play.play('note$number.wav');
  }

  Expanded BuildKey({Color colors, int note}) {
    return Expanded(
      child: FlatButton(
          color: colors,
          onPressed: () {
            playmusic(note);
          }),
    );
  }
}
