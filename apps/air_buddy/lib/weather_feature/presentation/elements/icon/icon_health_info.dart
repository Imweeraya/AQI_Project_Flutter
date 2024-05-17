import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class IconHealthInfo extends StatelessWidget {
  const IconHealthInfo(
      {super.key,
      required this.iconPath,
      required this.info,
      required this.textColor,
      required this.close});
  final String iconPath;
  final String info;
  final bool close;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  iconPath,
                  colorFilter: ColorFilter.mode(textColor, BlendMode.srcIn),
                  width: 35,
                ),
                close
                    ? Icon(
                        Icons.close_rounded,
                        size: 80,
                        color: textColor,
                      )
                    : const SizedBox()
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
              child: NormalText(
            title: info,
            textSize: TextSize.NORMAL,
            color: textColor,
          )),
        ],
      ),
    );
  }
}
