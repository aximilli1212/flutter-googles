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
      
//      NetworkHelper networkHelper = NetworkHelper('https://samples.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
      NetworkHelper networkHelper = NetworkHelper('https://samples.openweathermap.org/data/2.5/weather?id=524901&appid=b1b15e88fa797225412429c1c50c122a1');

      try{
        var newObj = await networkHelper.getData();

        Navigator.push(context, MaterialPageRoute(builder: (context){
          return LocationScreen(locationWeather: newObj,);
        }));

      }catch(err){
        print(err);
        print('bad network');
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
         child: SpinKitDoubleBounce(
           color: Colors.orange,
           size: 100.0,
         ),
      ),
    );
  }
}
