
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:core_ui/widgets/elements/tests/title_text.dart';

import '../../../domain/entities/weather_city.dart';

class CityList extends ConsumerWidget {
  const CityList({super.key , required this.city });
  final WeatherCity city;

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);
    final AqiData aqiData = weatherVMNotifier.getAqiData(city.aqi!=null ?int.parse(city.aqi!): 0);

    return InkWell(
      onTap: (){
        weatherVMNotifier.goInfoScreenByCityName(context, city.stationName!);
      },
      child: Container(
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
                      city.stationName ?? "",
                      style: TextStyle(
                        color: aqiData.textColor,
                        fontSize: 16,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         NormalText(
                      title: "AQI",
                      textSize: TextSize.NORMAL,
                      color:  aqiData.textColor,
                      textAlign: TextAlign.center,
                     ),
                      TitleText(
                      title: city.aqi.toString(),
                      textSize: TitleTextSize.REGULAR,
                      color: aqiData.textColor,
                      fontWeight: FontWeight.w500,
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
            ),
    );
  }
}