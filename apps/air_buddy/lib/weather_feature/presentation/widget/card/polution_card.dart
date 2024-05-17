import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText.dart';
import 'package:flutter/material.dart';

class PolutionCard extends StatelessWidget {
  const PolutionCard({super.key , required this.currentPolution});
  
  final Air currentPolution;

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 70,
          color: const Color.fromARGB(255, 232, 232, 232),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconText(
                  svgicon: "assets/icon_svg/uvi_icon.svg",
                  title: "UVI",
                  info: "${currentPolution.pollution.avgUvi ?? "-"}"),
              IconText(
                  svgicon: "assets/icon_svg/o3_icon.svg",
                  title: "O3",
                  info: "${currentPolution.pollution.avgO3 ?? "-"} D.U"),
              IconText(
                  texticon: "PM10",
                  title: "PM10",
                  info: "${currentPolution.pollution.avgPm10 ?? "-"} µg/m³")
            ],
          ),
        );
  }
}