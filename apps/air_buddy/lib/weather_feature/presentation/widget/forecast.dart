import 'package:air_buddy/weather_feature/presentation/widget/list/forecast_list.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForeCast extends ConsumerWidget {
  const ForeCast({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherVM = ref.watch(weatherViewModelProvider);

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: const Color.fromARGB(255, 232, 232, 232),
          child: const Center(
              child: Text(
            "พยากรณ์อากาศ 7 วัน",
            style: TextStyle(
                color: Color.fromARGB(255, 84, 84, 84),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          )),
        ),
        const SizedBox(
          height: 10,
        ),
        ForeCastList(
          forecast: weatherVM.air,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
