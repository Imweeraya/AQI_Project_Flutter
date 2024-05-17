import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LoadingWeather extends StatelessWidget {
  const LoadingWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: 
    Lottie.asset("assets/animation/loading_weather.json"),);
  }
}