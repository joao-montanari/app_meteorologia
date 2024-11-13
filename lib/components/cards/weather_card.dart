import 'package:app_meteorologia/models/weather.dart';
import 'package:app_meteorologia/screens/weather_specification.dart';
import 'package:app_meteorologia/utils/design_weather.dart';
import 'package:app_meteorologia/utils/navigator.dart';
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
      color: Colors.white,
      shadowColor: Colors.grey[400],
      elevation: 3,
      child: InkWell(
        onTap: () => navigatorPage(
          context,
          WeatherSpecificationPage(
            weather: widget.weather,
          ),
          Operations.push,
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.weather.weekDay,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: findDesign(widget.weather.weather).textColor
                      ),
                    ),
                    Text(
                      widget.weather.city,
                      style: TextStyle(
                        fontSize: 20,
                        color: findDesign(widget.weather.weather).textColor
                      ),
                    ),
                    Text(
                      widget.weather.weather,
                      style: TextStyle(
                        fontSize: 16,
                        color: findDesign(widget.weather.weather).textColor
                      ),
                    ),
                  ],  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "${widget.weather.temperature.round()}º",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                  color: findDesign(widget.weather.weather).color
                ),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: findDesign(widget.weather.weather).color,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Image.asset(
                findDesign(widget.weather.weather).iconImage,
              ),
            )
          ],
        ),
      ),
    );
  }
}