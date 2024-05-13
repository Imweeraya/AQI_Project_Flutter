import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            color: Color.fromARGB(255, 218, 218, 218),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconText(icon: Icons.wb_sunny_rounded, info: "UVI", title: "0"),
                IconText(
                    icon: Icons.cloud_outlined, info: "O3", title: "13 D.U"),
                IconText(texticon: "PM10", info: "PM10", title: "35 µg/m³")
              ],
            ),
          ),
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 191, 247, 94),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  size: 100,
                  color: Color.fromARGB(255, 141, 201, 37),
                ),
                Column(
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
                    Text(
                      "ดี",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 108, 154, 28)),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(
                         Radius.circular(5.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20 , 6 , 20 ,6 ),
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
          )
        ],
      ),
    );
  }
}
