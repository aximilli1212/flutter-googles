import 'package:flutter/material.dart';


class MessageBubble extends StatelessWidget {

  MessageBubble({this.sender,this.text});

  final String sender;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0) ,
      child: Column(
        children: <Widget>[
          Material(
            borderRadius:BorderRadius.circular(30.0)  ,
            elevation: 6.0,
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 20.0),
              child: Text(text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Text(sender,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10.0,
            ),
          )
        ],
      ),
    );
  }
}

