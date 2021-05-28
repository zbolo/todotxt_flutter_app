import 'package:flutter/material.dart';

/// Retrive screen size values.
class ScreenSize {
  final BuildContext context;

  ScreenSize(this.context);

  double get screenHeight {
    return MediaQuery.of(context).size.height;
  }

  double get screenWidth {
    return MediaQuery.of(context).size.width;
  }
}

/// Check if running in debug mode or not.
bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();

    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write('ff');
    }
    buffer.write(hexString.replaceFirst('#', ''));

    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
