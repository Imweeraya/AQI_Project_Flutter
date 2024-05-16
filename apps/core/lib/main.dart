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

  Future<void> initConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      connectivityStatus = connectivityResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            if (connectivityStatus == ConnectivityResult.none)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/dino.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _getStatusText(connectivityStatus),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _getStatusText(var status) {
    switch (status) {
      
      case ConnectivityResult.none:
        return RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'No Internet Connection\n',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'Please check your internet connection \nand try again',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  
                  
                ),
              ),
            ],
          ),
        );
      case ConnectivityResult.mobile:
        return const Text(
          'มือถือ',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        );
      case ConnectivityResult.wifi:
        return const Text(
          'WiFi',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        );
      default:
        return const Text(
          'Unknown',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        );
    }
  }

  void _refreshConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      connectivityStatus = connectivityResult;
    });
  }
}
