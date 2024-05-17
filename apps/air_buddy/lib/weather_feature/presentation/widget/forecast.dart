import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/presentation/widget/list/forecast_list.dart';
import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:flutter/material.dart';

class ForeCast extends StatelessWidget {
  const ForeCast({super.key, required this.forecastList});
  final List<Air> forecastList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: const Color.fromARGB(255, 232, 232, 232),
          child: const Center(
            child: NormalText(
              title: "พยากรณ์อากาศ 7 วัน",
              textSize: TextSize.SEMIBIG,
              color: Color.fromARGB(255, 84, 84, 84),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ForeCastList(
          forecast: forecastList,
        ),
      ],
    );
  }
}
