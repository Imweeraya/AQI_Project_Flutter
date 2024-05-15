import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet Status',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InternetStatusPage(),
    );
  }
}

class InternetStatusPage extends StatefulWidget {
  const InternetStatusPage({super.key});

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
        title: const Text('Internet Status'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'สถานะการเชื่อมต่ออินเทอร์เน็ต:',
            ),
            const SizedBox(height: 20),
            Text(
              _getStatusText(connectivityStatus),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
  onPressed: () {
    _refreshConnectivity();
   },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(75, 75, 75, 1), 
  ),
  child: const Text(
    'TRY AGAIN',
    style: TextStyle(
      color: Colors.white, 
      fontSize: 14, 
    ),
  ),
),

          ],
        ),
      ),
    );
  }

  String _getStatusText(var status) {
    switch (status) {
      case ConnectivityResult.none:
        return 'No Internet Connection';
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
