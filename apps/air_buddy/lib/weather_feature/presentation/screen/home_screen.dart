import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText.dart';
import 'package:air_buddy/weather_feature/presentation/widget/forecast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              size: 30,
              color: Color.fromARGB(255, 132, 132, 132),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outlined,
              size: 30,
              color: Color.fromARGB(255, 132, 132, 132),
            ),
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 246, 246, 246),
        child: ListView(
          children: [
            Container(
              height: 300,
              // child: VideoPlayerWidget(),
            ),
            Container(
              height: 70,
              color: Color.fromARGB(255, 218, 218, 218),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconText(
                      svgicon: "assets/icon_svg/uvi_icon.svg",
                      title: "UVI",
                      info: "0"),
                  IconText(
                      svgicon: "assets/icon_svg/o3_icon.svg",
                      title: "O3",
                      info: "13 D.U"),
                  IconText(texticon: "PM10", title: "PM10", info: "35 µg/m³")
                ],
              ),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 191, 247, 94),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // This gives a shadow below the box
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.emoji_emotions_outlined,
                    size: 100,
                    color: Color.fromARGB(255, 141, 201, 37),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AQI",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 108, 154, 28)),
                      ),
                      Text("11",
                          style: TextStyle(
                              fontSize: 36,
                              color: Color.fromARGB(255, 108, 154, 28)))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "ดี",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 108, 154, 28)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20, 6, 20, 6),
                          child: Text("PM2.5 2 µg/m³",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 108, 154, 28))),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ForeCast()
          ],
        ),
      ),
    );
  }
}
