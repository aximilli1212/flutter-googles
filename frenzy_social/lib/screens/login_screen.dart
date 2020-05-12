import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Image(
                height: MediaQuery.of(context).size.height / 2.5,
                width: double.infinity,
                image: AssetImage('assets/images/login_background.jpg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
