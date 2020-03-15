import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('Xylophone'),
          ),
      body: Column(
        children: <Widget>[
          FlatButton(
            color: Colors.red,
            child: Text('Sound Me'),
            onPressed: (){
              final player = AudioCache();
              player.play('note1.wav');
            },
          ),
          FlatButton(
            color: Colors.teal,
            child: Text('Sound Me'),
            onPressed: (){
              final player = AudioCache();
              player.play('note1.wav');
            },
          ),
        ],
      )

      ),

    );
  }
}
