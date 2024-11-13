import 'package:app_meteorologia/components/button.dart';
import 'package:app_meteorologia/models/weather.dart';
import 'package:app_meteorologia/screens/weather.dart';
import 'package:app_meteorologia/utils/design_weather.dart';
import 'package:app_meteorologia/utils/navigator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool isHumidifier = false;
  Weather weather = const Weather(
    city: "Campinas, SP", 
    weather: "Chuva", 
    temperature: 25, 
    weekDay: "Quarta-Feira", 
    thermalSensation: 24, 
    temperatureMin: 23, 
    temperatureMax: 27, 
    humidity: 65,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    findDesign(weather.weather).iconImage,
                  ),
                ),
                Text(
                  "${weather.temperature.round()}º",
                  style: const TextStyle(
                    fontSize: 75,
                  ),
                ),
                Text(
                  "${weather.city} - ${weather.weekDay}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Container(
                  width: 160,
                  height: 35,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: findDesign(weather.weather).color,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Center(
                    child: Text(
                      "Umidade: ${weather.humidity}%",
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 160,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: findDesign(weather.weather).color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Ligar umidificador:",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),
            ),
            Switch(
              value: isHumidifier, 
              onChanged: (bool value) {
                setState(() {
                  isHumidifier = value;
                });
              },
              activeColor: Colors.green,
              inactiveThumbColor: Colors.black,
              
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => navigatorPage(
                      context,
                      const WeatherPage(),
                      Operations.push,
                    ),
                    style: ButtonStyle(
                      // shape: WidgetStateProperty.all(
                      //   RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(4),
                      //   )
                      // ),
                    ),
                    child: Text(
                      "Clima da semana",
                      style: TextStyle(
                        fontSize: 16,
                        color: findDesign(weather.weather).color,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}