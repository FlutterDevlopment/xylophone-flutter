import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded playButton({Color color, int sound}) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playButton(color: Colors.red, sound: 1),
              playButton(color: Colors.green, sound: 2),
              playButton(color: Colors.blue, sound: 3),
              playButton(color: Colors.yellow, sound: 4),
              playButton(color: Colors.purple, sound: 5),
              playButton(color: Colors.brown, sound: 6),
              playButton(color: Colors.white, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
