class Weather {
  final String cityName;
  final double temperatureCelsius;
  final String mainWeather;
  final String weatherDescription;

  const Weather({
    required this.cityName,
    required this.temperatureCelsius,
    required this.mainWeather,
    required this.weatherDescription,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Weather &&
          runtimeType == other.runtimeType &&
          cityName == other.cityName &&
          temperatureCelsius == other.temperatureCelsius;

  @override
  int get hashCode => cityName.hashCode ^ temperatureCelsius.hashCode;

  Map<String, dynamic> toMap() {
    return {
      'cityName': cityName,
      'temperatureCelsius': temperatureCelsius,
      'mainWeather': mainWeather,
      'weatherDescription': weatherDescription,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      cityName: map['cityName'] as String,
      temperatureCelsius: map['temperatureCelsius'] as double,
      mainWeather: map['mainWeather'] as String,
      weatherDescription: map['weatherDescription'] as String,
    );
  }
}
