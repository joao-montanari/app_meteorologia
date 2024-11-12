import 'package:app_meteorologia/models/weather.dart';
import 'package:flutter/material.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  State<WeatherCard> createState() => _WeatherCard();
}

class _WeatherCard extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: Text(widget.weather.weather),
    );
  }
}