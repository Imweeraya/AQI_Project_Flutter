
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class CityList extends ConsumerWidget {
  const CityList({super.key , required this.city });
  final Polution city;

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);
    final AqiData aqiData = weatherVMNotifier.getAqiData(city.aqi!);

    return InkWell(
      onTap: (){
        // weatherVMNotifier.goInfoScreen(context, city)
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
                      city.city,
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
                          city.aqi.toString(),
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
            ),
    );
  }
}