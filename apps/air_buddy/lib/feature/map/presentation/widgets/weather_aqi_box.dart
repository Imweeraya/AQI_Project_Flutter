import 'package:air_buddy/feature/map/presentation/viewmodels/map_viewModel.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:core_ui/widgets/elements/tests/detail_text.dart';
import 'package:core_ui/widgets/elements/tests/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeatherAqiBox extends ConsumerWidget {
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final mapVM = ref.watch(mapViewModelProvider);
    final mapVMNotifier = ref.read(mapViewModelProvider.notifier);
    final AqiData aqiData = mapVMNotifier.getAqiData(int.parse(mapVM.aqi ?? "0"));

    return SizedBox(
        height: 104,
        child: Container(
          decoration: BoxDecoration(
            color: aqiData.backgroundColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            DetailText(
                              title: 'สหรัฐ AQI',
                              textSize: DetailTextSize.BIG,
                              color: aqiData.textColor,
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 15),
                                TitleText(
                                  title: mapVM.aqi,
                                  textSize: TitleTextSize.HUGE,
                                  color: aqiData.textColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
