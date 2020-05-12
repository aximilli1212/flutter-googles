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
                fit: BoxFit.cover,
              ),
              Text('FRENZY',  style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),), SizedBox(height:10.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical:15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Username',
                    prefixIcon: Icon(
                      Icons.account_box,
                      size: 30.0,
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
