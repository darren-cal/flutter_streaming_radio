import 'package:flutter/material.dart';
import 'package:flutter_streaming_radio/utils/hex_color.dart';
import 'radio_image.dart';

class NowPlaying extends StatelessWidget {
  final String radioName;
  final String radioImage;

  const NowPlaying({Key key, this.radioName, this.radioImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: HexColor('#182545')),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _nowPlayingRow(context, radioName, radioImage)
            ],
          ),
        ),
      ),
    );
  }

  Widget _nowPlayingRow(BuildContext context, String radioName, String radioImage) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
      child: ListTile(
        title: Text(
          radioName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: HexColor('#FFFFFF'),
          ),
        ),
        subtitle: Text(
          'Now Playing',
          textScaleFactor: 0.8,
          style: TextStyle(
            color: HexColor('#FFFFFF'),
          ),
        ),
        leading: RadioImage(imageUrl: radioImage, size: 50.0),
        trailing: Wrap(
          spacing: -10.0,
          children: [
            _stopIcon(context),
            _shareIcon(context),
          ],
        ),
      ),
    );
  }

  Widget _stopIcon(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.stop),
      color: HexColor('#9097A6'),
      onPressed: () {},
    );
  }

  Widget _shareIcon(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.share),
      color: HexColor('#9097A6'),
      onPressed: () {},
    );
  }
}
