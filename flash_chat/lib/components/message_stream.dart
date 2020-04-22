import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/components/message_bubble.dart';
import 'package:firebase_auth/firebase_auth.dart';




class MessageStream extends StatelessWidget {
  const MessageStream({
    Key key,
    FirebaseUser currentUser,
    @required Firestore db,
  }) : _db = db, currentUser = currentUser, super(key: key);

  final Firestore _db;
  final FirebaseUser currentUser;

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
              isMe: currentUser.email == messageSender? true : false,
            );

            messageBubbles.add(messageBubble);
          }

          return Expanded(
            child: ListView(
              reverse: true,
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
