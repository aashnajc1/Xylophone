import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int notenumber)
  {
    final player = AudioPlayer();
    player.play(AssetSource('note$notenumber.wav'));
  }
  Expanded buildkey({Color color, int number})
  {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playsound(number);
        },
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
            children: [
              buildkey(color: Colors.red, number: 1),
              buildkey(color: Colors.orange, number: 2),
              buildkey(color: Colors.yellow, number: 3),
              buildkey(color: Colors.green, number: 4),
              buildkey(color: Colors.blue, number: 5),
              buildkey(color: Colors.indigo, number: 6),
              buildkey(color: Colors.deepPurple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
