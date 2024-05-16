import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LoadingMap extends StatelessWidget {
  const LoadingMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: 
    Lottie.asset("assets/animation/loading_map.json"),);
  }
}