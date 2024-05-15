import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet Status',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InternetStatusPage(),
    );
  }
}

class InternetStatusPage extends StatefulWidget {
  @override
  _InternetStatusPageState createState() => _InternetStatusPageState();
}

class _InternetStatusPageState extends State<InternetStatusPage> {
  var connectivityStatus;

  @override
  void initState() {
    super.initState();
    initConnectivity();
  }

  // เมื่อสร้าง StatefulWidget นี้ เราจะเรียกใช้ initConnectivity เพื่อตรวจสอบสถานะการเชื่อมต่อเริ่มต้น
  Future<void> initConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      connectivityStatus = connectivityResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Status'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'สถานะการเชื่อมต่ออินเทอร์เน็ต:',
            ),
            SizedBox(height: 20),
            Text(
              _getStatusText(connectivityStatus),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _refreshConnectivity();
              },
              child: Text('ลองอีกครั้ง'),
            ),
          ],
        ),
      ),
    );
  }

  String _getStatusText(var status) {
    switch (status) {
      case ConnectivityResult.none:
        return 'ไม่มีการเชื่อมต่อ';
      case ConnectivityResult.mobile:
        return 'มือถือ';
      case ConnectivityResult.wifi:
        return 'WiFi';
      default:
        return 'Unknown';
    }
  }

  // ฟังก์ชันสำหรับการรีเฟรชการเชื่อมต่อ
  void _refreshConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      connectivityStatus = connectivityResult;
    });
  }
}
