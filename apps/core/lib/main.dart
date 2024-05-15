import 'package:connectivity/connectivity.dart';
import 'package:core/no_internet_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ConnectivityResult _connectivityResult;

  @override
  void initState() {
    super.initState();
    Connectivity().onConnectivityChanged.listen((result) {
      setState(() {
        _connectivityResult = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_connectivityResult == ConnectivityResult.none) {
      return NoInternetPage();
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Connected'),
        ),
        body: const Center(
          child: Text('You are connected to the internet.'),
        ),
      );
    }
  }
}
