import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String route = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds:1),
      vsync: this,
    );

    animation = ColorTween(begin: Colors.blue, end: Colors.white).animate(controller);

    controller.forward();

    controller.addListener((){
      setState(() {});
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'hero',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),

              TypewriterAnimatedTextKit(
                speed: Duration(milliseconds: 1000),
                text: ["Flash Chat"],
                textStyle: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w900),
              ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            FlashRoundedButton(
                bText:"Login",
                bColor: Colors.orange,
                onTap:(){Navigator.pushNamed(context,'login_screen');}
                ),
            FlashRoundedButton(
                bText:"Register",
                bColor: Colors.blueAccent,
                onTap:(){Navigator.pushNamed(context,'registration_screen');}
            ),
          ],
        ),
      ),
    );
  }



  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}
