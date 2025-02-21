import 'package:flutter/material.dart';

class WeatherDetailesWidget extends StatelessWidget {
  const WeatherDetailesWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });
final String? title;
final String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      "Current Temparature : Sharjah",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    );
  }
}
