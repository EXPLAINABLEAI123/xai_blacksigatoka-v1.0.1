import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color lightGreen900 = fromHex('#37761d');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color black900 = fromHex('#000000');

  static Color blueGray400 = fromHex('#888888');

  static Color gray900 = fromHex('#242424');

  static Color redA700Bf = fromHex('#bfff0000');

  static Color whiteA700A7 = fromHex('#a7ffffff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color green500 = fromHex('#48bf53');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
