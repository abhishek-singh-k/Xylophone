import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(const xylophoneApp());
}
class xylophoneApp extends StatelessWidget {
  const xylophoneApp({super.key});

  Expanded playsound(Color c, int a)
  {
    return Expanded(
      child: ElevatedButton(
          onPressed: ()
          {
            final player = AudioPlayer();
            player.play(AssetSource('note$a.wav'),);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: c,
            foregroundColor: Colors.amber,
          ),
          child: Text(''),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                playsound(Colors.red, 1),
                playsound(Colors.yellowAccent, 2),
                playsound(Colors.blueAccent, 3),
                playsound(Colors.white, 4),
                playsound(Colors.green, 5),
                playsound(Colors.purpleAccent, 6),
                playsound(Colors.yellow.shade900, 7),

              ],
            ),
          ),
        ),
      );
  }
}
