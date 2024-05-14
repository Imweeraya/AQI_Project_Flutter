import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText_small.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForeCastCard extends StatelessWidget {
  const ForeCastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                child: const Center(
                  child: Text(
                    "18 พ.ค.",
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
                  const Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "35°",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 76, 63)),
                          ),
                          Icon(
                            Icons.arrow_drop_up_rounded,
                            color: Color.fromARGB(255, 255, 76, 63),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text("24°"),
                          Icon(Icons.arrow_drop_down_rounded,
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
              const Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  children: [
                    IconTextSmall(
                        svgicon: "assets/icon_svg/uvi_icon.svg",
                        title: "UVI",
                        info: "0"),
                    SizedBox(
                      height: 15,
                    ),
                    IconTextSmall(
                        svgicon: "assets/icon_svg/o3_icon.svg",
                        title: "O3",
                        info: "13 D.U"),
                    SizedBox(
                      height: 15,
                    ),
                    IconTextSmall(
                        svgicon: "assets/icon_svg/wind_icon.svg",
                        title: "ความเร็วลม",
                        info: "10.7 กม./ชั่วโมง"),
                    SizedBox(
                      height: 15,
                    ),
                    IconTextSmall(
                        texticon: "PM 2.5", title: "PM 2.5", info: "14 µg/m³"),
                    SizedBox(
                      height: 15,
                    ),
                    IconTextSmall(
                        texticon: "PM10", title: "PM10", info: "35 µg/m³")
                  ],
                ),
              ),
            ],
          );
  }
}