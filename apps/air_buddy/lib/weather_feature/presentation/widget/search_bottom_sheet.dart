import 'package:air_buddy/weather_feature/presentation/widget/search_cities.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:core_ui/widgets/loading_city.dart';
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
  String searchQuery = '';

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
        weatherVM.loadingCity
            ? FractionallySizedBox(
                heightFactor: 0.8,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        top: 200.0, left: 15, right: 15, bottom: 15),
                    child: SingleChildScrollView(
                        child: SizedBox(child: LoadingCity())),
                  ),
                ),
              )
            : 
            FractionallySizedBox(
                heightFactor: 0.8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 70.0, left: 15, right: 15, bottom: 15),
                    child: SingleChildScrollView(
                        child: SearchCities(cities: weatherVM.city)),
                  ),
                ),
              ),
        Positioned(
          top: 10,
          left: 10,
          right: 10,
          child: AppBar(
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            elevation: 0,
            centerTitle: true,
            title: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
                weatherVMNotifier.getCities(filter: value);
              },
              decoration: const InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
