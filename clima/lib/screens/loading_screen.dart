import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation() async{
    print("we getting location:");
      WeatherModel weatherData = WeatherModel();

      try{
        var newObj =  await weatherData.getLocationWeather();

        Navigator.push(context, MaterialPageRoute(builder: (context){
          return LocationScreen(locationWeather: newObj);
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
