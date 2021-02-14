import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  void playsound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded buildkey({Color color, int SoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(SoundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red,SoundNumber: 1),
              buildkey(color: Colors.grey,SoundNumber: 2),
              buildkey(color: Colors.white,SoundNumber: 3),
              buildkey(color: Colors.blue,SoundNumber: 4),
              buildkey(color: Colors.deepOrange,SoundNumber: 5),
              buildkey(color: Colors.purple,SoundNumber: 6),
              buildkey(color: Colors.greenAccent,SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
