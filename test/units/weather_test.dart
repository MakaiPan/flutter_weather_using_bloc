import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_using_bloc/models/weather.dart';
import 'package:flutter_weather_using_bloc/utils//network_helper.dart';

void main() {
  const latOfTaipei = '24.976546';
  const lonOfTaipei = '121.408608';
  const weatherAPI = '7d681a760a81ba5b863c0cca27585d6d';
  const openWeatherURL = 'https://api.openweathermap.org/data/2.5/weather';
  const url =
      '$openWeatherURL?lat=$latOfTaipei&lon=$lonOfTaipei&units=metric&appid=$weatherAPI';

  test(
    'Weather class testing should fetch data from openWeatherAPI.',
    () async {
      WeatherApiAdapter networkHelper = WeatherApiAdapter.withUrl(url);

      var weatherData = await networkHelper.getJsonData();
      Weather weather = Weather.fromMap(weatherData);
      // ignore: avoid_print
      print(weather.toString());
      expect(weather.statusCode, 200);
    },
  );
}
