import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_using_bloc/applications/weather_cubit.dart';

import '../../../features/weather/model/weather.dart';

class CityWeather extends StatelessWidget {
  const CityWeather({
    Key? key,
    required this.weather,
  }) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        backButton(context),
        const SizedBox(height: 120.0),
        Center(
          child: Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.end,
            spacing: 32.0,
            children: [
              Text(
                weather.cityName,
                style: Theme.of(context).textTheme.headline1,
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
        ),
      ],
    );
  }

  IconButton backButton(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.chevron_left,
        size: 32.0,
      ),
      onPressed: () {
        context.read<WeatherCubit>().init();
      },
    );
  }
}
