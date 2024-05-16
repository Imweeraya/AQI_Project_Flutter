import 'package:air_buddy/feature/map/presentation/widgets/weather_aqi_box.dart';
import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MarkerLocationBox extends StatelessWidget {
  final String name;

  const MarkerLocationBox(
      {super.key, required this.name});

  @override
  Widget build(BuildContext context) {
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
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: 54,
                    height: 54,
                    child: Icon(Icons.pin_drop),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: NormalText(
                      title: name, textSize: TextSize.NORMAL, color: Colors.black,overFlow: true,maxLine: 2,),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: WeatherAqiBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}