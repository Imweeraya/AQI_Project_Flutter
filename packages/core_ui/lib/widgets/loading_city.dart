import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LoadingCity extends StatelessWidget {
  const LoadingCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: 
    Lottie.asset("assets/animation/searching_city.json" , width: 300),);
  }
}