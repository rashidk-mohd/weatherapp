import 'package:flutter/material.dart';
import 'package:weather_app/features/weather/repositories/weather_repo.dart';

class WeatherController with ChangeNotifier{
  WeatherRepository weatherRepo=WeatherRepository();
Future getWeatherData()async{
final response=weatherRepo.fetchWeatherData("Sharjah");
}
}