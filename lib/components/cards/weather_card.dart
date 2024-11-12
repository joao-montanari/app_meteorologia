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
  List<Map<String, dynamic>> weatherDesign = [
    {
      "key" : "Chuva",
      "color" : const Color.fromARGB(1000, 59, 93, 139),
      "textColor" : const Color.fromARGB(1000, 97, 128, 165),
    },
    {
      "key" : "Chuva com trovoadas",
      "color" : const Color.fromARGB(1000, 242, 191, 38),
      "textColor" : const Color.fromARGB(1000, 245, 204, 91),
    },
    {
      "key" : "Sol",
      "color" : const Color.fromARGB(1000, 242, 130, 119),
      "textColor" : const Color.fromARGB(1000, 248, 166, 158),
    },
    {
      "key" : "Nublado",
      "color" : const Color.fromARGB(1000, 102, 181, 175),
      "textColor" : const Color.fromARGB(1000, 149, 203, 200),
    },
  ];

  Map<String, dynamic> findDesign(String weather) {
    Map<String, dynamic> result = {};

    for (int index = 0; index < weatherDesign.length; index++) {
      if(weatherDesign[index]["key"] == weather) {
        result = weatherDesign[index];
      }
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.grey[400],
      elevation: 3,
      child: InkWell(
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
                        color: findDesign(widget.weather.weather)["textColor"]
                      ),
                    ),
                    Text(
                      widget.weather.city,
                      style: TextStyle(
                        fontSize: 20,
                        color: findDesign(widget.weather.weather)["textColor"]
                      ),
                    ),
                    Text(
                      widget.weather.weather,
                      style: TextStyle(
                        fontSize: 16,
                        color: findDesign(widget.weather.weather)["textColor"]
                      ),
                    ),
                  ],  
                ),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: findDesign(widget.weather.weather)["color"],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Image.asset(
                "../../../assets/images/chuva.png",
                width: 50,
                height: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}