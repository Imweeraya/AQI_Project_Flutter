import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GraphPM25 extends ConsumerWidget {
  const GraphPM25({super.key, required this.air});
  final List<Air> air;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);
    final List<DataPoint> avgPm25List = weatherVMNotifier.getPmList(air);
    final AqiData aqiData =
        weatherVMNotifier.getAqiData(air[0].pollution.aqi!.toInt());
    // List<num> avgPm25List = weatherVMNotifier.getPmList(air);

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: const Color.fromARGB(255, 232, 232, 232),
          child: const Center(
            child: NormalText(
              title: "PM2.5 Forecast",
              textSize: TextSize.SEMIBIG,
              color: Color.fromARGB(255, 84, 84, 84),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              series: <AreaSeries<DataPoint, String>>[
                AreaSeries<DataPoint, String>(
                  dataSource: avgPm25List,
                  xValueMapper: (DataPoint point, _) => point.date,
                  yValueMapper: (DataPoint point, _) => point.value,
                  color: aqiData.backgroundColor,
                  borderColor: aqiData.textColor,
                  borderWidth: 2,
                  borderDrawMode: BorderDrawMode.all,
                  markerSettings: MarkerSettings(
                      isVisible: true,
                      color: aqiData.textColor,
                      borderColor: aqiData.textColor),
                ),
              ],
              trackballBehavior: TrackballBehavior(
                enable: true, // Enable trackball
                activationMode: ActivationMode.singleTap, // Set activation mode
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DataPoint {
  final String date;
  final num value;

  DataPoint(this.date, this.value);
}
