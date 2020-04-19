import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';


class RegistrationScreen extends StatefulWidget {
  static String route = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _saving = false;


  String email;
  String password;

  final _auth = FirebaseAuth.instance;

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
              Hero(
                tag: 'hero',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
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
                  //Do something with the user input.
                },
                  decoration: kInputDecor.copyWith(
                    hintText: "Enter Your Email",
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
                  bText:"Register",
                  bColor: Colors.blueAccent,
                  onTap:() async{
                    setState((){
                      _saving = true;
                    });
                    try{
                      final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);

                      if(newUser != null){
                          setState((){
                            _saving = false;
                          });
                          Navigator.pushNamed(context, 'chat_screen');
                      }else{
                        print('Umm could not register');
                        setState((){
                          _saving = false;
                        });

                      }

                    }catch(err){
                      print(err);
                      setState((){
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
