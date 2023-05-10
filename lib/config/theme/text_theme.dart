import 'package:flutter/material.dart';
import 'package:flutter_ca_provider/config/theme/custom_color.dart';

class TextTheme {
  static const letterSpacing = -0.5;
  static const normalSize = 16.0;
  static const smallSize = 14.0;
  static const highlightSize = 18.0;

  TextStyle normalRegular({Color color = CustomColor.textBlack}) => TextStyle(
        fontSize: normalSize,
        color: color,
        letterSpacing: letterSpacing,
      );

  TextStyle normalBold({Color color = CustomColor.textBlack}) => TextStyle(
        fontSize: normalSize,
        color: color,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.bold,
      );

  TextStyle smallRegular({Color color = CustomColor.textBlack}) => TextStyle(
        fontSize: smallSize,
        color: color,
        letterSpacing: letterSpacing,
      );

  TextStyle smallBold({Color color = CustomColor.textBlack}) => TextStyle(
        fontSize: smallSize,
        color: color,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.bold,
      );

  TextStyle highlightRegular({Color color = CustomColor.textBlack}) =>
      TextStyle(
        fontSize: highlightSize,
        color: color,
        letterSpacing: letterSpacing,
      );

  TextStyle highlightBold({Color color = CustomColor.textBlack}) => TextStyle(
        fontSize: highlightSize,
        color: color,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.bold,
      );
}
