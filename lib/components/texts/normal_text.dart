import 'package:flutter/material.dart';
import 'package:greenzone_customer/constants/gz_color.dart';
import 'package:greenzone_customer/constants/ui_keys.dart';

class NormalText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  // constructor
  const NormalText({
    super.key,
    this.text = 'Normal Text',
    this.color = GZColor.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = UIKeys.textSizeDefault,
    this.textAlign,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight
      ),
    );
  }
}
