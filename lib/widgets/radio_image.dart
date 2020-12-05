import 'package:flutter/material.dart';
import '../utils/hex_color.dart';

class RadioImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const RadioImage({Key key, this.imageUrl, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(imageUrl),
      ),
      width: size == null ? 55 : size,
      height: size == null ? 55 : size,
      decoration: BoxDecoration(
        color: HexColor('#FFE5EC'),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
