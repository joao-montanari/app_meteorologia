import 'package:app_meteorologia/components/app_bar.dart';
import 'package:app_meteorologia/components/cards/weather_card.dart';
import 'package:app_meteorologia/components/loading.dart';
import 'package:app_meteorologia/models/weather.dart';
import 'package:app_meteorologia/utils/mocks/weathers.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({
    super.key,
  });

  @override
  State<WeatherPage> createState() => _WeatherPage();
}

class _WeatherPage extends State<WeatherPage> {

  Future<List<Weather>> getWeathers() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    return weathers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(99, 31, 20, 78),
      appBar: const CustomAppBar(
        title: 'Clima da semana',
      ),
      body: Column(
        children: [
          FutureBuilder<List<Weather>>(
            future: getWeathers(), 
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting) {
                return const CustomLoading();
              } else if (snapshot.hasError) {
                return const Text('Erro ao carregar os dados');
              } else {
                List<Weather>? data = snapshot.data;
                if (data == null || data.isEmpty) {
                  return const Text("No data avaible");
                } else {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        Weather weather = snapshot.data![index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 6,
                          ),
                          child: Column(
                            children: [
                              WeatherCard(weather: weather),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }
}