import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CityList extends StatelessWidget {
  const CityList({super.key , required this.city , required this.checkAqi});
  final Air city;
  final Function checkAqi; 

  @override
  Widget build(BuildContext context) {
    final AqiData aqiData = checkAqi(city.polution.aqi);
    return Container(
            height: 90,
            margin: const EdgeInsets.only(top: 20.0, bottom: 20),
            decoration: BoxDecoration(
              color: aqiData.backgroundColor,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    city.polution.city,
                    style: TextStyle(
                      color: aqiData.textColor,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'AQI',
                        style: TextStyle(
                          color: aqiData.textColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        city.polution.aqi.toString(),
                        style: TextStyle(
                          color: aqiData.textColor,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    aqiData.pathIcon,
                    width: 60,
                    height: 60,
                    colorFilter: ColorFilter.mode(
                        aqiData.textColor, BlendMode.srcIn),
                  ),
                ],
              ),
            ),
          );
  }
}