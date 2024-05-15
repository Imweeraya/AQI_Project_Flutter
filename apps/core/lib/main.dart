import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Internet'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.signal_wifi_off, size: 100, color: Colors.red),
            Text(
              'No Internet Connection',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
