import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class NoInternetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Internet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'No Internet Connection',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // ในกรณีที่มีการกดปุ่ม "ลองอีกครั้ง"
                // คุณสามารถเรียกฟังก์ชันเพื่อตรวจสอบการเชื่อมต่ออีกครั้ง
                _checkInternetConnection(context);
              },
              child: Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _checkInternetConnection(BuildContext context) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NoInternetPage()),
      );
    } else {
      // หากมีการเชื่อมต่ออินเทอร์เน็ต
      // คุณสามารถเรียกไปยังหน้าที่ต้องการให้แสดงหลังจากนี้
      // เช่น Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
