import 'package:air_buddy/infrastructure/viewmodel/error_state.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../infrastructure/port_weather/service.dart';
part 'error_viewmodel.g.dart';

@riverpod
class ErrorModel extends _$ErrorModel {
  IStatusWeatherService service = getIt.get<IStatusWeatherService>();

  @override
  ErrorState build() => ErrorState(
      isInternet:false,
  );
  //
  // Future<void> checkConnectivity() async {
  //   var connectivityResult = await (Connectivity().checkConnectivity());
  //   if (connectivityResult == ConnectivityResult.mobile) {
  //     print("Connected to a mobile network");
  //     state = state.copyWith(
  //       isInternet: true,
  //     );
  //   } else if (connectivityResult == ConnectivityResult.wifi) {
  //     print("Connected to a Wi-Fi network");
  //     state = state.copyWith(
  //       isInternet: true,
  //     );
  //   } else {
  //     print("Not connected to any network");
  //     state = state.copyWith(
  //       isInternet: false,
  //     );
  //   }
  // }

}
