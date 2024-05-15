// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List<Widget>.generate(8, (int index) {
                return Container(
                  height: 80,
                  margin: const EdgeInsets.only(top: 20.0, bottom: 20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(174, 83, 226, 85),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Chiang Mai',
                          style: TextStyle(
                            color: Color.fromARGB(184, 20, 20, 20),
                            fontSize: 16,
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AQI',
                              style: TextStyle(
                                color: Color.fromARGB(184, 20, 20, 20),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '54',
                              style: TextStyle(
                                color: Color.fromARGB(184, 20, 20, 20),
                                fontSize: 35,
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/aqi_icon/good_aqi.svg',
                          width: 60,
                          height: 60,                      
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
