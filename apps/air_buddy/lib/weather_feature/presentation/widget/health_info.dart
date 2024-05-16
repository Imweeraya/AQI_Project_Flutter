import 'package:air_buddy/weather_feature/presentation/widget/list/health_info_list.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:flutter/material.dart';

class HealthInfo extends StatelessWidget {
  const HealthInfo({super.key, required this.aqiData});
  final AqiData aqiData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          height: 50,
          color: const Color.fromARGB(255, 232, 232, 232),
          child: const Center(
              child: Text(
            "คำแนะนำด้านสุขภาพ",
            style: TextStyle(
                color: Color.fromARGB(255, 84, 84, 84),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: HealthInfoList(
                  suggestHealth: aqiData.listSuggestion,
                  textColor: aqiData.textColor)),
        ),
      ],
    );
  }
}
