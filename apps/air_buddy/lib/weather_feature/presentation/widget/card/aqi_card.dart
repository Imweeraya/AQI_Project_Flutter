import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:core_ui/widgets/elements/tests/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AqiCard extends StatelessWidget {
  const AqiCard({super.key, required this.aqiData, required this.currentAqi});
  final AqiData aqiData;
  final Air currentAqi;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: aqiData.backgroundColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(aqiData.pathIcon,
              width: 100,
              colorFilter:
                  ColorFilter.mode(aqiData.textColor, BlendMode.srcIn)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NormalText(
                title: "AQI",
                textSize: TextSize.SEMIBIG,
                color: aqiData.textColor,
              ),
              TitleText(
                title: "${currentAqi.pollution.aqi ?? "-"}",
                textSize: TitleTextSize.REGULAR,
                color: aqiData.textColor,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 48,
                child: Center(
                  child: NormalText(
                      title: aqiData.aqiText,
                      textSize: TextSize.SEMIBIG,
                      color: aqiData.textColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                  child: NormalText(
                    title: "PM2.5 ${currentAqi.pollution.avgPm25 ?? "-"} µg/m³",
                    textSize: TextSize.SEMIBIG,
                    color: aqiData.textColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
