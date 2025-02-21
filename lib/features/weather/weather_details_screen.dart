import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/features/weather/controller/weather_provider.dart';
import 'package:weather_app/features/weather/widegt/weather_detiles_widget.dart';

class WeatherDetailsScreen extends StatefulWidget {
  const WeatherDetailsScreen({super.key});

  @override
  State<WeatherDetailsScreen> createState() => _WeatherDetailsScreenState();
}

class _WeatherDetailsScreenState extends State<WeatherDetailsScreen> {
  TextEditingController inputController = TextEditingController();
  @override
  void initState() {
    Provider.of<WeatherController>(context, listen: false).getWeatherData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final weatherDetailsController=Provider.of<WeatherController>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
              ),
              onPressed: () {},
              child: Text("Fetch Weather"),
            ),
          )
        ],
        title: Text(
          "Weather Deatiles",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextFormField(
              controller: inputController,
              decoration: InputDecoration(
                hintText: "Enter your Location",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20), // Circular border
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(20), // Circular border when focused
                  borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2), // Optional: Custom border color when focused
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      20), // Circular border when not focused
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1), // Optional: Border color
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            WeatherDetailesWidget(
              title: "City Name",
              subtitle: "Sharjah",
            ),
            SizedBox(
              height: 20,
            ),
            WeatherDetailesWidget(
              title: "Current Temparture",
              subtitle: "42 degree",
            ),
            SizedBox(
              height: 20,
            ),
            WeatherDetailesWidget(
              title: "Weather conditions ",
              subtitle: "Sunny",
            ),
          ],
        ),
      ),
    );
  }
}

