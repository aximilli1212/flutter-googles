import 'package:flutter/material.dart';


class MessageBubble extends StatelessWidget {

  MessageBubble({this.isMe,this.sender,this.text});

  final String sender;
  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0) ,
      child: Column(
        crossAxisAlignment: isMe? CrossAxisAlignment.end: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            borderRadius:BorderRadius.only(
              topRight: isMe? Radius.circular(0.0):Radius.circular(30.0),
              topLeft: isMe? Radius.circular(30.0): Radius.circular(0.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            )  ,
            elevation: 2.0,
            color: isMe? Colors.lightBlueAccent: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 20.0),
              child: Text(text,
                style: TextStyle(
                  color: isMe? Colors.white: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Text(sender,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
            ),
          )
        ],
      ),
    );
  }
}

