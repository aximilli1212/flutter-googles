import 'package:flutter/material.dart';
import 'package:frenzy_social/widgets/curve_clipper.dart';

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
              ClipPath(
                clipper: CurveClipper(),
                child: Image(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: double.infinity,
                  image: AssetImage('assets/images/login_background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10.0),
              Text('FRENZY',  style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 12,
              ),),
              SizedBox(height:10.0),
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
              ),
              SizedBox(height:10.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical:15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'password',
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30.0,
                    )
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20.0,),

              GestureDetector(
                onTap: (){

                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal:60),
                  alignment: Alignment.center,
                  height: 45.0,
                  decoration:  BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                child: Text(
                  'Login', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0,
                  letterSpacing: 1.2
                ),
                ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      alignment: Alignment.center,
                       color: Theme.of(context).primaryColor,
                      height: 80.0,
                      child: Text('Dont have an account? Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      ),
                    ),
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
