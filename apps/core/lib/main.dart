import 'package:core/screens/internet_status_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
