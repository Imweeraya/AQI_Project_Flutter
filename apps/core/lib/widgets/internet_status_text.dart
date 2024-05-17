import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class NoInternetWidget extends StatefulWidget {
  @override
  _NoInternetWidgetState createState() => _NoInternetWidgetState();
}

class _NoInternetWidgetState extends State<NoInternetWidget> {
  late StreamSubscription<ConnectivityResult> _subscription;
  ConnectivityResult? _connectivityResult;

  @override
  void initState() {
    super.initState();
    _subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        _connectivityResult = result;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return _connectivityResult != null
        ? _buildContent()
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/dino.png', width: 70, height: 70), // Add image
                SizedBox(height: 10), // Add spacing between CircularProgressIndicator and "Checking..." text
                const Text(
                  'No Internet Connection',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5), // Add spacing between texts
                const Text(
                  'Please check your internet connection \nand try again',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
  }

  Widget _buildContent() {
    if (_connectivityResult == ConnectivityResult.none) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'No Internet Connection',
              style: TextStyle(fontSize: 24, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10), // Add spacing between texts
            const Text(
              'Please check your network \nsettings and try again.',
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20), // Add spacing between text and button
            ElevatedButton(
              onPressed: () {
                // Add code here to open settings page to connect to Wi-Fi or enable mobile data
              },
              child: Text('Open Settings'),
            ),
          ],
        ),
      );
    } else {
      return const Center(
        child: Text(
          'You are connected',
          style: TextStyle(fontSize: 20, color: Colors.green),
          textAlign: TextAlign.center,
        ),
      );
    }
  }
}
