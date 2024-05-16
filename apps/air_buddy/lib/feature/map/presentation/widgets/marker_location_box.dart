import 'package:air_buddy/feature/map/presentation/viewmodels/map_viewModel.dart';
import 'package:air_buddy/feature/map/presentation/widgets/weather_aqi_box.dart';
import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MarkerLocationBox extends ConsumerWidget {
  final String name;

  const MarkerLocationBox({super.key, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapVMFunction = ref.watch(mapViewModelProvider.notifier);
    double widthBox = MediaQuery.of(context).size.width - 30;

    return SizedBox(
      width: widthBox,
      height: 195,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: 54,
                    height: 54,
                    child: const Icon(Icons.pin_drop),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: NormalText(
                      title: name,
                      textSize: TextSize.NORMAL,
                      color: Colors.black,
                      overFlow: true,
                      maxLine: 2,
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      mapVMFunction.switchPopup();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      width: 32,
                      height: 32,
                      alignment: Alignment.center,
                      child: const Icon(Icons.cancel, color: Colors.white),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: WeatherAqiBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
