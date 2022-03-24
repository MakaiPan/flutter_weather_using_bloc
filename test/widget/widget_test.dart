import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_using_bloc/models/weather.dart';
import 'package:flutter_weather_using_bloc/pages/home/widgets/city_weather.dart';

void main() {
  testWidgets(
    'CityWeather widget test',
    (WidgetTester tester) async {
      var nane = 'Taipei';
      var temp = 21.0;
      var mainWeather = 'Clouds';
      var weatherDescription = 'Broken Clouds';
      Weather weather = Weather(
        cityName: nane,
        temperatureCelsius: temp,
        mainWeather: mainWeather,
        weatherDescription: weatherDescription,
        statusCode: 200,
      );
      await tester.pumpWidget(MaterialApp(home: CityWeather(weather: weather)));
      final cityNameFinder = find.text(nane);
      final tempFinder = find.text('$temp °C');
      final mainWeatherFinder = find.text(mainWeather);
      final weatherDescriptionFinder = find.text(weatherDescription);

      expect(cityNameFinder, findsOneWidget);
      expect(tempFinder, findsOneWidget);
      expect(mainWeatherFinder, findsOneWidget);
      expect(weatherDescriptionFinder, findsOneWidget);
    },
  );
}
