import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogWeather extends StatelessWidget {
  const AlertDialogWeather({
    Key? key,
    required this.content,
    required this.action,
  }) : super(key: key);

  final String content;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white, // Set background color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // Add rounded corners
      ),
      title: NormalText(title: content, textSize: TextSize.SEMIBIG , color: const Color.fromARGB(255, 84, 84, 84),),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            action();
            Navigator.of(context).pop();
          },
          child: const Text(
            'Yes',
            style: TextStyle(
              color: Color.fromARGB(255, 84, 84, 84), // Set button text color
              fontSize: 16.0, // Set button text size
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'No',
            style: TextStyle(
              color: Color.fromARGB(255, 84, 84, 84), // Set button text color
              fontSize: 16.0, // Set button text size
            ),
          ),
        ),
      ],
    );
  }
}
