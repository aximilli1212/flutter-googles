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
    getMessages();
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

void getMessages()async{
    final messages = await _db.collection('messages').getDocuments();
    for (var message in messages.documents){
        print(message.data);
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
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
