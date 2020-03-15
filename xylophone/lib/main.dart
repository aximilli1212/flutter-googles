import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color color, int num}){
    return Expanded(
      child: FlatButton(
        color: color,
        child: Text('Sound Me'),
        onPressed: (){
          playSound(num);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
        backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('Xylophone'),
          ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(color: Colors.red, num: 1),
          buildKey(color: Colors.orange, num: 2),
          buildKey(color: Colors.teal, num: 3),
          buildKey(color: Colors.yellow, num: 4),
          buildKey(color: Colors.lightGreen, num: 5),
          buildKey(color: Colors.lightBlueAccent, num: 6),
          buildKey(color: Colors.purpleAccent, num: 7),
        ],
      )

      ),

    );
  }
}
