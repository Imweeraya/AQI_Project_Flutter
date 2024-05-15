import 'package:flutter/material.dart';

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
            const Text(
              'No internet connection',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Do whatever you want when the user presses the "Retry" button
              },
              child: Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
