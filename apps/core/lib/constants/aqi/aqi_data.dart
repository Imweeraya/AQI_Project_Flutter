import 'dart:ui';

import 'package:core/constants/aqi/aqi_type.dart';

class AqiData {
  Color backgroundColor;
  Color textColor;
  String aqiText;
  String pathIcon;
  List<Suggestion> listSuggestion;

  AqiData({
    required this.backgroundColor,
    required this.textColor,
    required this.aqiText,
    required this.pathIcon,
    required this.listSuggestion,
  });
}

class Suggestion {
  String pathIcon;
  String info;
  bool close;

  Suggestion({required this.pathIcon, required this.info, required this.close});
}


 

Map<AqiType, AqiData> aqiDataList = {
  AqiType.good: AqiData(
    backgroundColor: const Color.fromARGB(255, 191, 247, 94),
    textColor: const Color.fromARGB(255, 108, 154, 28),
    aqiText: "Good",
    pathIcon: "assets/icon_svg/good_aqi.svg",
    listSuggestion: [
      Suggestion(
          pathIcon: "assets/icon_svg/window_info.svg",
          info: "เปิดหน้าต่างของคุณเพื่อนำอากาศที่สะอาดและสะอาดในบ้าน",
          close: false),
      Suggestion(
          pathIcon: "assets/icon_svg/bike_info.svg", info: "เพลิดเพลินกับกิจกรรมกลางแจ้ง", close: false),
    ],
  ),
  AqiType.moderate: AqiData(
    backgroundColor: const Color.fromARGB(255, 240, 197, 45),
    textColor: const Color.fromARGB(255, 152, 123, 20),
    aqiText: "Moderate",
    pathIcon: "assets/icon_svg/moderate_aqi.svg",
    listSuggestion: [
      Suggestion(
          pathIcon: "assets/icon_svg/window_info.svg",
          info: "ปิดหน้าต่างของคุณเพื่อหลีกเลี่ยงอากาศกลางแจ้งที่สกปรก", close: true),
      Suggestion(pathIcon: "assets/icon_svg/bike_info.svg", info: "กลุ่มอ่อนไหวควรลดการออกกำลังกายกลางแจ้ง", close: false),
      Suggestion(pathIcon: "assets/icon_svg/mask_info.svg", info: "กลุ่มอ่อนไหวควรสวมหน้ากากกลางแจ้ง", close: false),
      Suggestion(pathIcon: "assets/icon_svg/air_filter_info.svg", info: "กลุ่มแพ้ง่ายควรเริ่มใช้เครื่องฟอกอากาศ", close: false)
    ],
  ),
  AqiType.unhealthyForSensitive: AqiData(
    backgroundColor: const Color.fromARGB(255, 251,153,86),
    textColor: Color.fromARGB(255, 171, 97, 50),
    aqiText: "Unhealthy \n For Sensitive Group",
    pathIcon: "assets/icon_svg/sensitive_aqi.svg",
    listSuggestion: [
      Suggestion(
          pathIcon: "assets/icon_svg/window_info.svg",
          info: "ปิดหน้าต่างของคุณเพื่อหลีกเลี่ยงอากาศกลางแจ้งที่สกปรก", close: true),
      Suggestion(pathIcon: "assets/icon_svg/bike_info.svg", info: "ลดการออกกำลังกายกลางแจ้ง", close: false),
      Suggestion(pathIcon: "assets/icon_svg/mask_info.svg", info: "สวมหน้ากากกลางแจ้งและในบ้าน", close: false),
      Suggestion(pathIcon: "assets/icon_svg/air_filter_info.svg", info: "ใช้เครื่องฟอกอากาศ", close: false)
    ],
  ),
  AqiType.unhealthy: AqiData(
    backgroundColor: const Color.fromARGB(255,246,104,106),
    textColor: Color.fromARGB(255, 168, 66, 70),
    aqiText: "Unhealthy",
    pathIcon: "assets/icon_svg/unhealthy_aqi.svg",
    listSuggestion: [
      Suggestion(
          pathIcon: "assets/icon_svg/window_info.svg",
          info: "ปิดหน้าต่างของคุณเพื่อหลีกเลี่ยงอากาศกลางแจ้งที่สกปรก", close: true),
      Suggestion(pathIcon: "assets/icon_svg/bike_info.svg", info: "หลีกเลี่ยงการออกกำลังกายกลางแจ้ง", close: true),
      Suggestion(pathIcon: "assets/icon_svg/mask_info.svg", info: "สวมหน้ากากกลางแจ้งและในบ้าน", close: false),
      Suggestion(pathIcon: "assets/icon_svg/air_filter_info.svg", info: "ใช้เครื่องฟอกอากาศ", close: false)
    ],
  ),
  AqiType.veryUnhealthy: AqiData(
    backgroundColor: const Color.fromARGB(255,164,125,184),
    textColor: Color.fromARGB(255, 73, 52, 86),
    aqiText: "Very Unhealthy",
    pathIcon: "assets/icon_svg/ver_unhealthy_aqi.svg",
    listSuggestion: [
      Suggestion(
          pathIcon: "assets/icon_svg/window_info.svg",
          info: "ปิดหน้าต่างของคุณเพื่อหลีกเลี่ยงอากาศกลางแจ้งที่สกปรก", close: true),
      Suggestion(pathIcon: "assets/icon_svg/bike_info.svg", info: "หลีกเลี่ยงการออกกำลังกายกลางแจ้ง", close: true),
      Suggestion(pathIcon: "assets/icon_svg/mask_info.svg", info: "สวมหน้ากากกลางแจ้งและในบ้าน", close: false),
      Suggestion(pathIcon: "assets/icon_svg/air_filter_info.svg", info: "ใช้เครื่องฟอกอากาศ", close: false)
    ],
  ),
  AqiType.hazadous: AqiData(
    backgroundColor: const Color.fromARGB(255,160,119,133),
    textColor: Color.fromARGB(255, 67, 51, 55),
    aqiText: "Hazadous",
    pathIcon: "assets/icon_svg/hazardous_aqi.svg",
    listSuggestion: [
      Suggestion(
          pathIcon: "assets/icon_svg/window_info.svg",
          info: "ปิดหน้าต่างของคุณเพื่อหลีกเลี่ยงอากาศกลางแจ้งที่สกปรก", close: true),
      Suggestion(pathIcon: "assets/icon_svg/bike_info.svg", info: "หลีกเลี่ยงการออกกำลังกายกลางแจ้ง", close: true),
      Suggestion(pathIcon: "assets/icon_svg/mask_info.svg", info: "สวมหน้ากากกลางแจ้งและในบ้าน", close: false),
      Suggestion(pathIcon: "assets/icon_svg/air_filter_info.svg", info: "ใช้เครื่องฟอกอากาศ", close: false)
    ],
  ),
};
