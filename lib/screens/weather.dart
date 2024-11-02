

import 'package:app_meteorologia/components/app_bar.dart';
import 'package:app_meteorologia/components/cards/weather_card.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({
    super.key,
  });

  @override
  State<WeatherPage> createState() => _WeatherPage();
}

class _WeatherPage extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(99, 31, 20, 78),
      appBar: CustomAppBar(
        title: 'Weather',
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}