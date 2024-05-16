import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum NormalTextSize { BIG, NORMAL, SMALL }

class NormalText extends StatelessWidget {
  final String title;
  final Color? color;
  final String? family;
  final bool? overFlow;
  final NormalTextSize textSize;
  final int? maxLine;

  const NormalText(
      {super.key,
      required this.title,
      this.color,
      this.family,
      this.overFlow,
      required this.textSize,
      this.maxLine});

  @override
  Widget build(BuildContext context) {
    late double size;
    switch (textSize) {
      case NormalTextSize.BIG:
        size = 20;
        break;
      case NormalTextSize.NORMAL:
        size = 16;
        break;
      case NormalTextSize.SMALL:
        size = 14;
        break;
    }

    return Text(
      title,
      overflow: overFlow ?? false ? TextOverflow.ellipsis : null,
      maxLines: maxLine,
      style: TextStyle(
        color: color ?? Colors.white,
        fontSize: size,
        fontFamily: family,
      ),
    );
  }
}
