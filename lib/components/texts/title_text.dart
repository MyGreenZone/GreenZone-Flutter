import 'package:flutter/cupertino.dart';
import 'package:greenzone_customer/constants/ui_keys.dart';

class TitleText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;


  // constructor
  const TitleText({
    super.key,
    this.text = 'Title Text',
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveTextStyle = (textStyle ?? const TextStyle()).copyWith(
      fontSize: textStyle?.fontSize ?? UIKeys.textSizeTitle,
    );
    return Text(text, style: effectiveTextStyle);
  }
}
