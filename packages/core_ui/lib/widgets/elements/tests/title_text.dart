import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TextSize { EXTRA, NORMAL, SMALL }

class BigTitleText extends StatelessWidget {
  final String title;
  final Color? color;
  final String? family;
  final bool? overFlow;
  final TextSize textSize;

  const BigTitleText(
      {super.key,
      required this.title,
      this.color,
      this.family,
      this.overFlow,
      required this.textSize});

  @override
  Widget build(BuildContext context) {
    late double size;
    switch (textSize) {
      case TextSize.EXTRA:
        size = 54;
        break;
      case TextSize.NORMAL:
        size = 40;
        break;
      case TextSize.SMALL:
        size = 24;
        break;
    }

    return Text(
      overflow: overFlow ?? false ? TextOverflow.ellipsis : null,
      title,
      style: TextStyle(
        color: color ?? Colors.white,
        fontWeight: FontWeight.w800,
        fontSize: size,
        fontFamily: family,
      ),
    );
  }
}
