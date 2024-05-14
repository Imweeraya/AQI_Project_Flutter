import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TextSize { BIG, NORMAL, SMALL }

class NormalText extends StatelessWidget {
  final String title;
  final Color? color;
  final String? family;
  final bool? overFlow;
  final TextSize textSize;

  const NormalText(
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
      case TextSize.BIG:
        size = 20;
        break;
      case TextSize.NORMAL:
        size = 16;
        break;
      case TextSize.SMALL:
        size = 14;
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
