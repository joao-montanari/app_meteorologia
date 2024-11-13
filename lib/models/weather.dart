

class Weather {
  const Weather({
    required this.city,
    required this.weather,
    required this.temperature,
    required this.weekDay,
    required this.thermalSensation,
    required this.temperatureMin,
    required this.temperatureMax,
    required this.humidity,
  });

  final String city;
  final String weather;
  final double temperature;
  final String weekDay;
  final double thermalSensation;
  final double temperatureMin;
  final double temperatureMax;
  final int humidity;
}