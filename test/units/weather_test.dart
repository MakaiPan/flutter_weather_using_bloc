import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_using_bloc/model/weather.dart';
import 'package:flutter_weather_using_bloc/services/network_helper.dart';
import 'package:http/http.dart' as http;

void main() async {
  test('Weather class testing should fetch data from openWeatherAPI.', () {});
  const latOfTaipei = '24.976546';
  const lonOfTaipei = '121.408608';
  const weatherAPI = '7d681a760a81ba5b863c0cca27585d6d';
  const openWeatherURL = 'https://api.openweathermap.org/data/2.5/weather';
  const url =
      '$openWeatherURL?lat=$latOfTaipei&lon=$lonOfTaipei&units=metric&appid=$weatherAPI';
  NetworkHelper networkHelper = const NetworkHelper(url: url);

  var weatherData = await networkHelper.getJsonData();
  Weather weather = Weather.fromMap(weatherData);
  print(url);
  print(weather.toString());
}
