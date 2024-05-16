import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconText extends StatelessWidget {
  const IconText(
      {super.key,
      this.icon,
      this.texticon,
      this.svgicon,
      required this.title,
      required this.info});

  final IconData? icon;
  final String? texticon;
  final String? svgicon;
  final String info;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon != null
            ? Icon(
                icon,
                color: const Color.fromARGB(255, 132, 132, 132),
                size: 30,
              )
            : texticon != null
                ? Text(
                    texticon!,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 84, 84, 84),
                        fontWeight: FontWeight.bold),
                  )
                : SvgPicture.asset(
                    svgicon!,
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(255, 132, 132, 132), BlendMode.srcIn),
                    width: 30,
                  ),
        const SizedBox(
          width: 8,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 84, 84, 84),
              ),
            ),
            Text(
              info,
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
