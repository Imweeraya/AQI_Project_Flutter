// lib/widgets/error_page.dart
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final VoidCallback? reCallApi;

  const ErrorPage({Key? key,this.reCallApi});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              color: Color.fromARGB(255, 200, 63, 53),
              size: 80,
            ),
            const SizedBox(height: 16),
            const Text(
              'Sorry, something went wrong.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "We're working on getting this fixed as soon as we can.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: reCallApi ?? () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor:
                    Color.fromARGB(75, 75, 75, 1),
              ),
              child: const Text('TRY AGAIN'),
            ),
          ],
        ),
      ),
    );
  }
}
