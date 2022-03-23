import 'package:bloc/bloc.dart';
import 'package:flutter_weather_using_bloc/features/weather/model/weather.dart';
import 'package:flutter_weather_using_bloc/services/network_helper.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(const WeatherInitial());

  Future getWeather(String cityName) async {
    try {
      emit(const WeatherLoading());
      Uri url = getUrlWithCity(city: cityName);
      NetworkHelper networkHelper = NetworkHelper(url: url);
      var weatherJsonData = await networkHelper.getJsonData();
      Weather weather = Weather.fromMap(weatherJsonData);
      emit(WeatherLoaded(weather));
    } on NetworkException catch (e) {
      emit(WeatherError(
          "${e.toString()}\nCouldn't fetch weather. Please check the city name."));
    }
  }

  void init() {
    emit(const WeatherInitial());
  }
}
