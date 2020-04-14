import 'package:clima/services/networking.dart';
import 'package:clima/services/location.dart';


class WeatherModel {


  String apiKey = "b46361d8210782dad0019e0be67ac48f";
  String openWeatherUrl = "https://samples.openweathermap.org/data/2.5/weather?";

  double latitude;
  double longitude;
  String cityName;

  Future<dynamic> getCityWeather(String cityName) async{

    NetworkHelper networkHelper = NetworkHelper('${openWeatherUrl}q=$cityName&appid=$apiKey');

    try{
      var newObj = await networkHelper.getData();
      return newObj;

    }catch(err){
      print(err);
      print('bad network');
    }

  }
  Future<dynamic> getLocationWeather() async{
    print("we getting location:");
    Location location = Location();

    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper('${openWeatherUrl}lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey');
//      NetworkHelper networkHelper = NetworkHelper('https://samples.openweathermap.org/data/2.5/weather?id=524901&appid=b1b15e88fa797225412429c1c50c122a1');

    try{
      var newObj = await networkHelper.getData();
      return newObj;

    }catch(err){
      print(err);
      print('bad network');
    }

  }


  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
