import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

   String apiKey = "b46361d8210782dad0019e0be67ac48f";

   double latitude;
   double longitude;

  void getLocation() async{
      Location location = Location();

      await location.getCurrentLocation();

      latitude = location.latitude;
      longitude = location.longitude;

      getData();

  }

  void getData() async{
    http.Response response = await http.get(
   'https://samples.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    response.statusCode == 200? print(response.body): print(response.statusCode);
    if(response.statusCode == 200){
        String data = response.body;
        var newObj =  jsonDecode(data);
        print(newObj['coord']['lon']);
        print(newObj['coord']['lat']);
        print(newObj['weather'][0]['description']);

    }else{
      print(response.statusCode);
    }
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
           mainAxisAlignment: MainAxisAlignment.center,
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
