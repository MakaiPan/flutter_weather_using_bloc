import 'dart:convert';
import 'package:flutter_weather_using_bloc/utilities/contants.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final Uri url;

  const NetworkHelper({
    required this.url,
  });

  Future getJsonData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      throw NetworkException(response.statusCode);
    }
  }
}

class NetworkException implements Exception {
  NetworkException(this.statusCode);
  final int statusCode;

  @override
  String toString() => 'Status Code: $statusCode';
}

Uri getUrlWithCity({
  required String city,
}) {
  return Uri.parse(
      '$kOpenWeatherURL?q=$city&units=metric&appid=$kWeatherApiId');
}
