import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText.dart';
import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText_small.dart';
import 'package:air_buddy/weather_feature/presentation/widget/card/forecast_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForeCast extends StatefulWidget {
  const ForeCast({super.key});

  @override
  State<ForeCast> createState() => _ForeCastState();
}

class _ForeCastState extends State<ForeCast> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: Color.fromARGB(255, 232, 232, 232),
          child: const Center(
              child: Text(
            "พยากรณ์อากาศ 7 วัน",
            style: TextStyle(
                color: Color.fromARGB(255, 84, 84, 84),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width:180,
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
          child: ForeCastCard()
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
