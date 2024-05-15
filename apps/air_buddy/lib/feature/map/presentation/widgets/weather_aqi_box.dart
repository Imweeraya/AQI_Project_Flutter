import 'package:core_ui/widgets/elements/tests/detail_text.dart';
import 'package:core_ui/widgets/elements/tests/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class WeatherAqiBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 104,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                children: [
                  SizedBox(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        DetailText(
                          title: 'สหรัฐ AQI',
                          textSize: DetailTextSize.BIG,
                          color: Color.fromARGB(255, 152, 123, 20),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            TitleText(
                              title: '53',
                              textSize: TitleTextSize.EXTRA,
                              color: Color.fromARGB(255, 152, 123, 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
              Container(
                width: 2,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              const Column(
                children: [
                  SizedBox(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        DetailText(
                          title: 'PM2.5',
                          textSize: DetailTextSize.BIG,
                          color: Color.fromARGB(255, 152, 123, 20),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(width: 15),
                            TitleText(
                              title: '10',
                              textSize: TitleTextSize.EXTRA,
                              color: Color.fromARGB(255, 152, 123, 20),
                            ),
                            DetailText(
                              title: 'µg/m³',
                              textSize: DetailTextSize.BIG,
                              color: Color.fromARGB(255, 152, 123, 20),
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
