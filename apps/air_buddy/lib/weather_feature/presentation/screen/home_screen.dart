import 'package:air_buddy/weather_feature/presentation/widget/forecast.dart';
import 'package:air_buddy/weather_feature/presentation/widget/weather_current%20_status.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(weatherViewModelProvider.notifier).getWeathers();
    });
  }

  @override
  Widget build(BuildContext context) {
    final weatherVM = ref.watch(weatherViewModelProvider);
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);

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
        color: const Color.fromARGB(255, 246, 246, 246),
        child: ListView(
          children: [
            InkWell(
              onTap: (){
                weatherVMNotifier.goInfoScreen(context, weatherVM.air);
              },
                child: WeatherCurrentStatus(
              curentWeather: weatherVM.air[0],
            )),
            const SizedBox(
              height: 20,
            ),
            ForeCast(
              forecastList: weatherVM.air,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
