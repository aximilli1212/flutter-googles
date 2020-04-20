import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  static String route = 'chat_screen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _db = Firestore.instance;
  final _auth = FirebaseAuth.instance;
  
  String messageText;

  FirebaseUser loggedInUser;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async{
    try{
      final user = await _auth.currentUser();
      if(user != null){
        loggedInUser = user;
        print(loggedInUser.email);
      }

  }catch(e){
      print(e);
    }
}

void messagesStream()async{
    await for(var snapshot in _db.collection('messages').snapshots()){
      for(var message in snapshot.documents){
        print(message.data);
      }

    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
                //Implement logout functionality
              }),
          IconButton(
              icon: Icon(Icons.shop),
              onPressed: () {
                messagesStream();
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            StreamBuilder<QuerySnapshot>(
             stream: _db.collection('messages').snapshots(),
             builder: (context,snapshot){
               if(snapshot.hasData){
                 final messages = snapshot.data.documents;
                 List<MessageBubble> messageBubbles = [];

                 for(var message in messages){
                   final messageText = message.data['text'];
                   final messageSender= message.data['sender'];

                   final messageBubble = MessageBubble(
                       text:'$messageText from $messageSender',
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
        ),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                       messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                    onPressed: () async{
                      //Implement send functionality.
                  var savedData = await _db.collection('messages').add({
                      'text': messageText,
                      'sender': loggedInUser.email
                    });

                  print(savedData);
                    
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {

  MessageBubble({this.sender,this.text});

  final String sender;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0) ,
      child: Material(
        color: Colors.blue,
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
    );
  }
}

