import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';
import 'package:air_buddy/weather_feature/presentation/widget/card/forecast_card.dart';
import 'package:flutter/material.dart';

class ForeCastList extends StatelessWidget {
  const ForeCastList({super.key , required this.forecast});
  final List<Weather> forecast;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16,);
        },
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        scrollDirection: Axis.horizontal,
        itemCount: forecast.length,
        itemBuilder: (context , index){
          return ForeCastCard(weather: forecast[index]);
      }),
    );
  }
}