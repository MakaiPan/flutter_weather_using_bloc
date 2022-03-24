import 'package:flutter/material.dart';

import 'package:flutter_weather_using_bloc/models/weather.dart';

class CityWeather extends StatelessWidget {
  const CityWeather({
    Key? key,
    required this.weather,
  }) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.end,
        spacing: 32.0,
        children: [
          Text(
            weather.cityName,
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            weather.mainWeather,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            weather.weatherDescription,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            '${weather.temperatureCelsius.toStringAsFixed(1)} °C',
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
