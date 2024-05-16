// ignore_for_file: prefer_const_constructors

import 'package:core/constants/aqi/aqi_data.dart';
import 'package:core/constants/aqi/aqi_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ModalInfo extends StatelessWidget {
  
  ModalInfo({super.key});

  final AqiData aqiGood = aqiDataList[AqiType.good]!;
  final AqiData aqiModerate = aqiDataList[AqiType.moderate]!;
  final AqiData aqiunhealthyForSensitive= aqiDataList[AqiType.unhealthyForSensitive]!;
  final AqiData aqiunhealthy = aqiDataList[AqiType.unhealthy]!;
  final AqiData aqiveryUnhealthy = aqiDataList[AqiType.veryUnhealthy]!;
  final AqiData aqihazadous = aqiDataList[AqiType.hazadous]!;
  
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
            _buildCustomContainer(aqiGood.aqiText, aqiGood.aqiRange, aqiGood.pathIcon, aqiGood.backgroundColor,aqiGood.textColor),
            _buildCustomContainer(aqiModerate.aqiText, aqiModerate.aqiRange, aqiModerate.pathIcon, aqiModerate.backgroundColor,aqiModerate.textColor),
            _buildCustomContainer(aqiunhealthyForSensitive.aqiText, aqiunhealthyForSensitive.aqiRange, aqiunhealthyForSensitive.pathIcon, aqiunhealthyForSensitive.backgroundColor,aqiunhealthyForSensitive.textColor),
          _buildCustomContainer(aqiunhealthy.aqiText, aqiunhealthy.aqiRange, aqiunhealthy.pathIcon, aqiunhealthy.backgroundColor,aqiunhealthy.textColor),
            _buildCustomContainer(aqiveryUnhealthy.aqiText, aqiveryUnhealthy.aqiRange, aqiveryUnhealthy.pathIcon, aqiveryUnhealthy.backgroundColor,aqiveryUnhealthy.textColor),
            _buildCustomContainer(aqihazadous.aqiText, aqihazadous.aqiRange, aqihazadous.pathIcon, aqihazadous.backgroundColor,aqihazadous.textColor),
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

  Widget _buildCustomContainer(String text1, String text2, String svgPath, Color color,Color textColor) {
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
            color: textColor, // Apply the color here
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
                        ? '${text1.substring(0, 15)}\n${text1.substring(15)}'
                        : text1,
                    style:  TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  text2,
                  style:  TextStyle(
                    color: textColor,
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
