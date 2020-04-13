import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;

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
    http.Response response = await http.get(
   'https://samples.openweathermap.org/data/2.5/forecast?id=524901&appid=b1b15e88fa797225412429c1c50c122a1');
    print(response);
    response.statusCode == 200? print(response.body): print(response.statusCode);
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
