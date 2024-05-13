import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText(
      {super.key,
      this.icon,
      this.texticon,
      required this.info,
      required this.title});

  final IconData? icon;
  final String? texticon;
  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon != null
            ? Icon(
                icon,
                color: Color.fromARGB(255, 132, 132, 132),
                size: 30,
              )
            : Text(
                texticon!,
                style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 84, 84, 84),
                    fontWeight: FontWeight.bold),
              ),
        SizedBox(
          width: 8,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              info,
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 84, 84, 84),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 84, 84, 84),
              ),
            )
          ],
        )
      ],
    );
  }
}
