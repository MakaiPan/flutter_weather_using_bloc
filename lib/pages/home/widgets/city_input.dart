import 'package:flutter/material.dart';
import 'package:flutter_weather_using_bloc/utils/constants.dart';

class CityInput extends StatelessWidget {
  const CityInput({
    Key? key,
    required this.onSubmitted,
  }) : super(key: key);

  final Function(String inputValue) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: TextField(
        onSubmitted: onSubmitted,
        textInputAction: TextInputAction.search,
        decoration: kInputDecoration.copyWith(
          hintText: 'Enter a city',
        ),
      ),
    );
  }
}
