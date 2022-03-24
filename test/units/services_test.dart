import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_using_bloc/utils/services.dart';

void main() {
  group(
    'Weather API Adapter',
    () {
      test(
        'Weather AIP Adapter with city testing should fetch data from openWeatherAPI.',
        () async {
          var cityName = 'Taipei';
          WeatherApiAdapter adapter = WeatherApiAdapter.withCity(cityName);
          var data = await adapter.getJsonData();
          expect(data['name'], cityName);
          expect(data['cod'], 200);
        },
      );

      test(
        'Weather API Adapter with url testing should fetch data from openWeatherAPI.',
        () async {
          var city = 'Taiwan';
          var url =
              'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=7d681a760a81ba5b863c0cca27585d6d';
          WeatherApiAdapter adapter = WeatherApiAdapter.withUrl(url);
          var data = await adapter.getJsonData();
          expect(data['name'], city);
          expect(data['cod'], 200);
        },
      );
    },
  );
}
