import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

   String apiKey = "b46361d8210782dad0019e0be67ac48f";

   double latitude;
   double longitude;

  void getLocation() async{
    print("we getting location:");
      Location location = Location();

      await location.getCurrentLocation();

      latitude = location.latitude;
      longitude = location.longitude;
      
      NetworkHelper networkHelper = NetworkHelper('https://samples.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

      var newObj = await networkHelper.getData();

      print(newObj['coord']['lon']);
      print(newObj['coord']['lat']);
      print(newObj['weather'][0]['description']);

      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LocationScreen();
      }));

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
         child: SpinKitDoubleBounce(
           color: Colors.orange,
           size: 100.0,
         ),
      ),
    );
  }
}