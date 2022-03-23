import 'package:bloc/bloc.dart';
import 'package:flutter_weather_using_bloc/models/weather.dart';
import 'package:flutter_weather_using_bloc/utils/network_helper.dart';
import 'package:meta/meta.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(const WeatherInitial());

  Future getWeather(String cityName) async {
    try {
      emit(const WeatherLoading());
      WeatherApiAdapter adapter = WeatherApiAdapter.withCity(cityName);
      var weatherJsonData = await adapter.getJsonData();
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
