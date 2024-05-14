import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';
import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText_small.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class ForeCastCard extends StatelessWidget {
  const ForeCastCard({super.key, required this.weather});
  final Weather weather;

  @override
  Widget build(BuildContext context) {

    String formatDate(DateTime dateTime) {
      final formatter = DateFormat('dd MMMM');
      return formatter.format(dateTime);
    }

    return Container(
      width: 180,
      height: 380,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 180,
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 212, 239, 241),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)),
            ),
            child: Center(
              child: Text(
                formatDate(weather.date),
                style: TextStyle(
                    color: Color.fromARGB(255, 84, 84, 84),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                "assets/icon_svg/sun_weather.svg",
                colorFilter: const ColorFilter.mode(
                    Color.fromARGB(255, 234, 214, 33), BlendMode.srcIn),
                width: 50,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${weather.maxTemp}°",
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 76, 63)),
                      ),
                      const Icon(
                        Icons.arrow_drop_up_rounded,
                        color: Color.fromARGB(255, 255, 76, 63),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("${weather.minTemp}°"),
                      const Icon(Icons.arrow_drop_down_rounded,
                          color: Color.fromARGB(255, 63, 105, 255))
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 100,
            height: 5,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 130, 130, 130),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
           Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              children: [
                IconTextSmall(
                    svgicon: "assets/icon_svg/uvi_icon.svg",
                    title: "UVI",
                    info: "${weather.avgUvi}"),
                const SizedBox(
                  height: 15,
                ),
                IconTextSmall(
                    svgicon: "assets/icon_svg/o3_icon.svg",
                    title: "O3",
                    info: "${weather.avgO3} D.U"),
                SizedBox(
                  height: 15,
                ),
                IconTextSmall(
                    svgicon: "assets/icon_svg/wind_icon.svg",
                    title: "windSpeed",
                    info: "${weather.windSpeed} km./hr"),
                SizedBox(
                  height: 15,
                ),
                IconTextSmall(
                    texticon: "PM 2.5", title: "PM 2.5", info: "${weather.avgPm25} µg/m³"),
                SizedBox(
                  height: 15,
                ),
                IconTextSmall(texticon: "PM10", title: "PM10", info: "${weather.avgPm10} µg/m³")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
