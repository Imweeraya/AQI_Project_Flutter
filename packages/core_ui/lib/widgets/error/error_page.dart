// lib/widgets/error_page.dart
import 'package:flutter/material.dart';

import '../alert/alert_weeather_dialog.dart';

class ErrorPage extends StatelessWidget {
  final VoidCallback? reCallApi;
  final Function? function2;

  final String? title;
  final String? content;
  final String? button1Title;

  final String? button2Title;
  final String? confirmationTitleBt2;

  const ErrorPage(
      {Key? key,
      this.reCallApi,
      this.function2,
      this.button1Title,
      this.button2Title,
      this.confirmationTitleBt2,
      this.title,
      this.content});

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
             Text(
              title ?? 'Sorry, something went wrong.',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              content ?? "We're working on getting this fixed as soon as we can.",
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: reCallApi ?? () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(75, 75, 75, 1),
              ),
              child: Text(button1Title ?? 'TRY AGAIN'),
            ),
            function2 != null
                ? ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          // Return an alert dialog
                          return AlertDialogWeather(
                            content: confirmationTitleBt2 ?? 'Are you sure ?',
                            action: function2!,
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(75, 75, 75, 1),
                    ),
                    child: Text(button2Title ?? 'Go to Back >'),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
