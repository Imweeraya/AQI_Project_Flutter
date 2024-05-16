import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/presentation/widget/list/city_list.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchCities extends StatelessWidget {
  const SearchCities({super.key , required this.cities, required this.checkAqi});
  final List<Air> cities;
  final Function checkAqi; 

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(
        cities.length,
        (int index) {
          return CityList(city: cities[index], checkAqi: checkAqi,);
        },
      ),
    );
  }
}
