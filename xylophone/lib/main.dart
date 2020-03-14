import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              color: Colors.red,
              child: Text('Sound Me'),
              onPressed: (){
               playSound(1);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.teal,
              child: Text('Sound Me'),
              onPressed: (){
               playSound(2);
              },
            ),
          ), Expanded(
            child: FlatButton(
              color: Colors.orange,
              child: Text('Sound Me'),
              onPressed: (){
               playSound(3);
              },
            ),
          ), Expanded(
            child: FlatButton(
              color: Colors.blue,
              child: Text('Sound Me'),
              onPressed: (){
               playSound(4);
              },
            ),
          ), Expanded(
            child: FlatButton(
              color: Colors.grey,
              child: Text('Sound Me'),
              onPressed: (){
               playSound(5);
              },
            ),
          ), Expanded(
            child: FlatButton(
              color: Colors.purpleAccent,
              child: Text('Sound Me'),
              onPressed: (){
               playSound(6);
              },
            ),
          ), Expanded(
            child: FlatButton(
              color: Colors.teal,
              child: Text('Sound Me'),
              onPressed: (){
               playSound(7);
              },
            ),
          ),
        ],
      )

      ),

    );
  }
}
