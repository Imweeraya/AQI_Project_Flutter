import 'package:air_buddy/infrastructure/viewmodel/error_viewmodel.dart';
import 'package:air_buddy/weather_feature/presentation/widget/forecast.dart';
import 'package:air_buddy/weather_feature/presentation/widget/modal_info.dart';
import 'package:air_buddy/weather_feature/presentation/widget/search_bottom_sheet.dart';
import 'package:air_buddy/weather_feature/presentation/widget/weather_current%20_status.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:core_ui/widgets/alert/alert_weeather_dialog.dart';
import 'package:core_ui/widgets/error/error_page.dart';
import 'package:core_ui/widgets/loading/loading_weather.dart';
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
      // findAll is search
      ref.read(weatherViewModelProvider.notifier).findAllAqiCity();
    });
  }

  @override
  Widget build(BuildContext context) {
    final weatherVM = ref.watch(weatherViewModelProvider);
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);
    // final errorVM = ref.watch(errorModelProvider.notifier);
    // errorVM.checkConnectivity();

    return weatherVM.loading
        ? const LoadingWeather()
        : weatherVM.currentAir.isEmpty
            ? ErrorPage(reCallApi: weatherVMNotifier.getWeathers)
            : Scaffold(
                appBar: AppBar(
                  actions: [
                    IconButton(
                  onPressed: () {
                    // Show the dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // Return an alert dialog
                        return AlertDialogWeather(
                          content: 'Get weather at location ?',
                          action: weatherVMNotifier.getWeathers,
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.location_searching_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 132, 132, 132),
                  ),
                ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return SearchBottomSheetWidget();
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.search_rounded,
                        size: 30,
                        color: Color.fromARGB(255, 132, 132, 132),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ModalInfo();
                          },
                        );
                      },
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
                          onTap: () {
                            weatherVMNotifier.goInfoScreen(
                                context, weatherVM.currentAir);
                          },
                          child: WeatherCurrentStatus(
                            curentWeather: weatherVM.currentAir[0],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ForeCast(
                        forecastList: weatherVM.currentAir,
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
