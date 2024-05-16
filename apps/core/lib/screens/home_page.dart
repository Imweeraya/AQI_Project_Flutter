// lib/screens/home_page.dart
import 'package:flutter/material.dart';
import '../buttons/custom_button.dart';
import '../widgets/error_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: CustomButton(
          onPressed: () {
            // Simulate an error
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ErrorPage(errorMessage: 'An unexpected error occurred.'),
              ),
            );
          },
          text: 'Show Error Page',
        ),
      ),
    );
  }
}
