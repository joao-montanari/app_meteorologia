import 'package:app_meteorologia/components/app_bar.dart';
import 'package:app_meteorologia/components/button.dart';
import 'package:app_meteorologia/components/cards/weather_card.dart';
import 'package:app_meteorologia/components/loading.dart';
import 'package:app_meteorologia/models/weather.dart';
import 'package:app_meteorologia/utils/mocks/weathers.dart';
import 'package:app_meteorologia/utils/design_weather.dart';
import 'package:flutter/material.dart';

class WeatherSpecificationPage extends StatefulWidget {
  const WeatherSpecificationPage({
    required this.weather,
    super.key,
  });

  final Weather weather;

  @override
  State<WeatherSpecificationPage> createState() => _WeatherSpecificationPage();
}

class _WeatherSpecificationPage extends State<WeatherSpecificationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.weather.weekDay,
        color: Colors.white,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(findDesign(widget.weather.weather).backgroundImage),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${widget.weather.temperature.round()}º",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Text(
              "${widget.weather.city} - ${widget.weather.weekDay}",
              style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sensação",
                        style: TextStyle(
                          color: findDesign(widget.weather.weather).textColor,
                        ),
                      ),
                      Text(
                        "${widget.weather.thermalSensation}ºC",
                        style: TextStyle(
                          color: findDesign(widget.weather.weather).color, 
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Umidade",
                        style: TextStyle(
                          color: findDesign(widget.weather.weather).textColor,
                        ),
                      ),
                      Text(
                        "${widget.weather.humidity}%",
                        style: TextStyle(
                          color: findDesign(widget.weather.weather).color,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Máxima",
                        style: TextStyle(
                          color: findDesign(widget.weather.weather).textColor,
                        ),
                      ),
                      Text(
                        "${widget.weather.temperatureMax}ºC",
                        style: TextStyle(
                          color: findDesign(widget.weather.weather).color,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mínima",
                        style: TextStyle(
                          color: findDesign(widget.weather.weather).textColor,
                        ),
                      ),
                      Text(
                        "${widget.weather.temperatureMin}ºC",
                        style: TextStyle(
                          color: findDesign(widget.weather.weather).color,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}