import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum DetailTextSize { BIG, SEMIBIG , NORMAL, SMALL}

class DetailText extends StatelessWidget {
  final String title;
  final Color? color;
  final String? family;
  final bool? overFlow;
  final DetailTextSize textSize;
  final int? maxLine;
  final FontWeight? fontWeight;

  const DetailText(
      {super.key,
      required this.title,
      this.color,
      this.family,
      this.overFlow,
      required this.textSize,
      this.maxLine,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    late double size;
    switch (textSize) {
      case DetailTextSize.BIG:
        size = 12;
        break;
      case DetailTextSize.SEMIBIG:
        size = 10;
        break;
      case DetailTextSize.NORMAL:
        size = 8;
        break;
      case DetailTextSize.SMALL:
        size = 4;
        break;
    }

    return Text(
      title,
      overflow: overFlow ?? false ? TextOverflow.ellipsis : null,
      maxLines: maxLine,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size,
        fontFamily: family,
        fontWeight: fontWeight ?? FontWeight.normal
      ),
    );
  }
}
