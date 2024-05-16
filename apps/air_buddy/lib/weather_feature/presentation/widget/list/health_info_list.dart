import 'package:air_buddy/weather_feature/presentation/elements/icon/icon_health_info.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:flutter/material.dart';

class HealthInfoList extends StatelessWidget {
  const HealthInfoList(
      {super.key, required this.suggestHealth, required this.textColor});
  final List<Suggestion> suggestHealth;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        suggestHealth.length,
        (index) {
          return IconHealthInfo(
              iconPath: suggestHealth[index].pathIcon,
              info: suggestHealth[index].info,
              textColor: textColor,
              close: suggestHealth[index].close);
        },
      ),
    );
  }
}
