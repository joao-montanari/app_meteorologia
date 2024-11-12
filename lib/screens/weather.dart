import 'package:app_meteorologia/components/app_bar.dart';
import 'package:app_meteorologia/components/cards/weather_card.dart';
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
    return weathers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(99, 31, 20, 78),
      appBar: const CustomAppBar(
        title: 'Weather',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder<List<Weather>>(
              future: getWeathers(), 
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Text('Erro ao carregar os dados');
                } else {
                  List<Weather>? data = snapshot.data;
                  if (data == null || data.isEmpty) {
                    return const Text("No data avaible");
                  } else {
                    List<Weather>? data = snapshot.data;
                    return Column(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: data?.length ?? 0,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return Text(
                                  "WEATHER: ${data?[index].weather}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                );
                              },
                              // itemCount: 3,
                              // itemBuilder: (context, index) {
                              //   return WeatherCard(
                              //     weather: data![index],
                              //   );
                              // },
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}