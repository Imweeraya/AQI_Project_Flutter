import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class NoInternetWidget extends StatefulWidget {
  final Widget child;

  const NoInternetWidget({Key key, @required this.child}) : super(key: key);

  @override
  _NoInternetWidgetState createState() => _NoInternetWidgetState();
}

class _NoInternetWidgetState extends State<NoInternetWidget> {
  StreamSubscription<ConnectivityResult> subscription;

  @override
  void initState() {
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        // ตรวจสอบสถานะการเชื่อมต่ออินเทอร์เน็ตทุกครั้งที่มีการเปลี่ยนแปลง
        // และอัปเดตสถานะในส่วนต่าง ๆ ของแอปพลิเคชัน
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel(); // ยกเลิกการติดตามสถานะการเชื่อมต่อเมื่อไม่ต้องการใช้งานต่อไป
  }

  @override
  Widget build(BuildContext context) {
    return widget.child; // ส่ง widget.child กลับเมื่อไม่มีการตรวจสอบการเชื่อมต่ออินเทอร์เน็ต
  }
}
