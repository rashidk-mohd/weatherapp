import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:weather_app/features/weather/weather_model.dart';

class WeatherRepository {
  Future<WeatherData> fetchWeatherData(String city) async {
    try {
      final url =
          "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=199b274d84f490b640936bd3e7e67fb2&units=metric";

      final response = await http.get(Uri.parse(url));

      log("Response Status Code: ${response.statusCode}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return WeatherData(
          model: WeatherModel.fromJson(jsonDecode(response.body)),
          error: null
        );
      } else {
        return WeatherData(
error: "Something Went Wrong"
        )
      }
    } catch (e) {
      log("Exception in fetching weather data: $e");
    }
  }
}
