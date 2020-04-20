import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';



class LoginScreen extends StatefulWidget {
  static String route = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _saving = false;

  final _auth = FirebaseAuth.instance;

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
          inAsyncCall: _saving,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'hero',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                  decoration: kInputDecor.copyWith(
                    hintText: "Please Enter your Email",
                  )
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                     password = value;
                  //Do something with the user input.
                },
               decoration: kInputDecor.copyWith(
                hintText: "Enter Password",
              )
              ),
              SizedBox(
                height: 24.0,
              ),
              FlashRoundedButton(
                  bText:"Login",
                  bColor: Colors.blueAccent,
                  onTap:() async{
                    print(email);
                    print(password);

                    setState(() {
                      _saving = true;
                    });


                    try{
                      final logUser = await _auth.signInWithEmailAndPassword(email: email, password: password);

                      if(logUser != null){
                        print(logUser);
                        setState(() {
                          _saving = false;
                        });

                        Navigator.pushNamed(context, 'chat_screen');
                      }else{
                        print('Umm could not log you in.');
                        setState(() {
                          _saving = false;
                        });
                      }

                    }catch(err){
                      print(err);
                      setState(() {
                        _saving = false;
                      });
                    }

                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
