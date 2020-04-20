import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/components/message_bubble.dart';



class MessageStream extends StatelessWidget {
  const MessageStream({
    Key key,
    @required Firestore db,
  }) : _db = db, super(key: key);

  final Firestore _db;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _db.collection('messages').snapshots(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          final messages = snapshot.data.documents;
          List<MessageBubble> messageBubbles = [];

          for(var message in messages){
            final messageText = message.data['text'];
            final messageSender= message.data['sender'];

            final messageBubble = MessageBubble(
              text:'$messageText ',
              sender: '$messageSender',
            );

            messageBubbles.add(messageBubble);
          }

          return Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              children: messageBubbles,
            ),
          );

        }else{
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
            ),
          );
        }
      },
    );
  }
}
