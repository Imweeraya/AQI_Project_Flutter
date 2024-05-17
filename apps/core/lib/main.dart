import 'package:core/widgets/internet_status_text.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: NoInternetWidget(
          child: Center(
            child: Text('ยินดีต้อนรับสู่แอปพลิเคชัน'),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
