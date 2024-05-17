
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:air_buddy/weather_feature/presentation/widget/list/city_list.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/weather_city.dart';


class SearchCities extends StatelessWidget {
  const SearchCities({super.key , required this.cities});
  final List<WeatherCity> cities;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(
        cities.length,
        (int index) {
          return CityList(city: cities[index]);
        },
      ),
    );
  }
}
