import 'package:air_buddy/weather_feature/presentation/widget/search_cities.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBottomSheetWidget extends ConsumerStatefulWidget {
  const SearchBottomSheetWidget({super.key});

  @override
  ConsumerState<SearchBottomSheetWidget> createState() =>
      _SearchBottomSheetWidgetState();
}

class _SearchBottomSheetWidgetState
    extends ConsumerState<SearchBottomSheetWidget> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(weatherViewModelProvider.notifier).getCities();
    });
  }

  @override
  Widget build(BuildContext context) {
    final weatherVM = ref.watch(weatherViewModelProvider);
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);

    return Stack(
      children: [
        FractionallySizedBox(
          heightFactor: 0.8,
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, left: 15, right: 15, bottom: 15),
              child: SingleChildScrollView(
                child: SearchCities(cities: weatherVM.city, checkAqi: weatherVMNotifier.getAqiData,)
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
