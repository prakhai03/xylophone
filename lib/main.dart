import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Widget soundTile (Color color, int a){
    return TextButton(
      onPressed: (){
        final player = AudioPlayer();
        player.play(AssetSource('note$a.wav'));
      },
      child: Text(''),
       style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
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
              Expanded(child: TextButton(
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note1.wav'));
                },
                child: Text(''),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              )),
              Expanded(child: soundTile(Colors.indigo, 2)),
              Expanded(child: soundTile(Colors.blue, 3)),
              Expanded(child: soundTile(Colors.green, 4)),
              Expanded(child: soundTile(Colors.yellow, 5)),
              Expanded(child: soundTile(Colors.orange, 6)),
              Expanded(child: soundTile(Colors.red, 7)),

            ],
          ),
        ),
      ),
    );
  }
}