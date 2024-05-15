import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Screen'),
      ),
      body: Center(
        child: CircularProgressIndicator(), // ใช้ CircularProgressIndicator เพื่อแสดงว่ากำลังโหลด
      ),
    );
  }
}
