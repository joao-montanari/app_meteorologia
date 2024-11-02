

import 'package:app_meteorologia/models/weather.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  State<CustomCard> createState() => _CustomCard();
}

class _CustomCard extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text('Hello world'),
    );
  }
}