import 'package:flutter/material.dart';
import 'pickup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Color textColor = Color(0xFF545D68);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton( // Leading icon button
            icon: Icon(
              Icons.arrow_back,
              color:  Color(0xFF545D68),
            ),
            onPressed: (){},
          ),
          title: Text("Pickup",
          style: TextStyle(
              fontFamily: 'Varela', fontSize: 20.0, color: textColor,
          ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications_none,
                         color: textColor,),
            )
          ],
        ),
        body:PickupBody(),
    );

       // This trailing comma makes auto-formatting nicer for build methods.
  }
}
