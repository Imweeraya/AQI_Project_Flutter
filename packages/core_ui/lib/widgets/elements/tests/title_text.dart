import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TitleTextSize { EXTRA, NORMAL, SMALL }

class TitleText extends StatelessWidget {
  final String title;
  final Color? color;
  final String? family;
  final bool? overFlow;
  final TitleTextSize textSize;
  final int? maxLine;

  const TitleText(
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
      case TitleTextSize.EXTRA:
        size = 54;
        break;
      case TitleTextSize.NORMAL:
        size = 40;
        break;
      case TitleTextSize.SMALL:
        size = 24;
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
