import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray100 = fromHex('#d9d9d9');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blueGray800 = fromHex('#3f3d56');

  static Color deepOrangeA700Ea = fromHex('#eaea330a');

  static Color black9003f = fromHex('#3f000000');

  static Color blueGray800Cc = fromHex('#cc3f3d56');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
