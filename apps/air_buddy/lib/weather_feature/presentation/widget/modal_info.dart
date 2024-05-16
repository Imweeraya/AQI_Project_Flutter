// ignore_for_file: prefer_const_constructors

import 'package:core/constants/aqi/aqi_data.dart';
import 'package:core/constants/aqi/aqi_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ModalInfo extends StatelessWidget {
  
  ModalInfo({super.key});

  final AqiData aqiGood = aqiDataList[AqiType.good]!;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Center(
        child: Text(
          'AQi',
          style: TextStyle(fontSize: 40),
        ),
      ),
      content: SizedBox(
        width: 600,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildCustomContainer(aqiGood.aqiText, aqiGood.aqiRange, aqiGood.pathIcon, aqiGood.backgroundColor),
            _buildCustomContainer('Moderate', '51-100', 'assets/svg_icon/moderate_aqi.svg', Color.fromARGB(255, 232, 235, 55)),
            _buildCustomContainer('Unhealthy for Sensitive Groups', '101-150', 'assets/svg_icon/sensitive_aqi.svg', Color.fromARGB(255, 245, 118, 34)),
            _buildCustomContainer('Unhealthy', '151-200', 'assets/svg_icon/unhealthy_aqi.svg', Color.fromARGB(255, 218, 46, 46)),
            _buildCustomContainer('Very Unhealthy', '201-300', 'assets/svg_icon/ver_unhealthy_aqi.svg', Color.fromARGB(255, 96, 7, 125)),
            _buildCustomContainer('Hazardous', '301+', 'assets/svg_icon/hazardous_aqi.svg', Color.fromARGB(255, 101, 12, 12)),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('close'),
        ),
      ],
    );
  }

  Widget _buildCustomContainer(String text1, String text2, String svgPath, Color color) {
    return Container(
      width: 350,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            svgPath,
            width: 55,
            height: 55,
            color: color, // Apply the color here
          ),
          Container(
            width: 230,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Text(
                    text1.length > 17
                        ? '${text1.substring(0, 14)}\n${text1.substring(14)}'
                        : text1,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
