import 'package:flutter_weather_using_bloc/features/weather/model/weather.dart';

abstract class WeatherRepository {
  Future<Weather> fetcher({
    String cityName,
    Coordinate coordinate,
  });
}
