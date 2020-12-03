import 'dart:ui';

class HexColor extends Color {
  HexColor(final String hexString) : super(_parseColor(hexString));

  static int _parseColor(String hexString) {
    try {
      hexString = hexString.toUpperCase().replaceAll("#", "");
      if(hexString.length == 6) {
        hexString = "FF" + hexString;
      }

      return int.parse(hexString, radix: 16);
    } on Exception catch (e) {
      return 0xFFFFFFFF;
    }
  }
}