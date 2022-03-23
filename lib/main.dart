import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_using_bloc/applications/weather_cubit.dart';
import 'package:flutter_weather_using_bloc/features/weather/weather_repository.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter weather app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BlocProvider(
        create: (context) => WeatherCubit(),
        child: HomePage(),
      ),
    );
  }
}
