import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation() async{
      Location location = Location();

      await location.getCurrentLocation();
      print(location.longitude);
      print("************");
      print(location.latitude);

  }

  void getData() async{
    Response response = await get(

    );
    print(response);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Column(
           children: <Widget>[
             RaisedButton(
               color: Colors.orange,
               child: Text('Get Location'),
               onPressed: (){
                 getLocation();
               },
             ),
             RaisedButton(
               color: Colors.orange,
               child: Text('Get Weather'),
               onPressed: (){
                 getData();
               },
             ),
           ],
         ),
      ),
    );
  }
}
