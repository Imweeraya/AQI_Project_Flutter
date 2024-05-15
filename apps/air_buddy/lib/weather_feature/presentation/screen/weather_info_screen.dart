import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/presentation/widget/forecast.dart';
import 'package:air_buddy/weather_feature/presentation/widget/weather_current%20_status.dart';
import 'package:flutter/material.dart';

class WeatherInfoScreen extends StatefulWidget {
  const WeatherInfoScreen({super.key , required this.weather});
  final List<Air> weather;

  @override
  State<WeatherInfoScreen> createState() => _WeatherInfoScreenState();
}

class _WeatherInfoScreenState extends State<WeatherInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Air> listWeather = widget.weather;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color.fromARGB(255, 132, 132, 132),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
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
        color: const Color.fromARGB(255, 246, 246, 246),
        child: ListView(
          children: [
            InkWell(
                onTap: () {},
                child: WeatherCurrentStatus(
                  curentWeather: listWeather[0],
                )),
            const SizedBox(
              height: 20,
            ),
            ForeCast(
              forecastList: listWeather,
            ),
          ],
        ),
      ),
    );
  }
}
