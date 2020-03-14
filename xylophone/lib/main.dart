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
      body: SafeArea(
          child: Center(child:
          RaisedButton(
            child: Text('Click Me'),
             onPressed: (){
               final player = AudioCache();
               player.play('note1.wav');
             },
          ),
          ),
      ),
      ),

    );
  }
}
