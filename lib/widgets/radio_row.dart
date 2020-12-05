import 'package:flutter/material.dart';
import '../utils/hex_color.dart';
import '../models/radio_model.dart';
import 'radio_image.dart';

class RadioRow extends StatefulWidget {
  final RadioModel radioModel;

  RadioRow({Key key, this.radioModel}) : super(key: key);

  @override
  _RadioRowState createState() => _RadioRowState();
}

class _RadioRowState extends State<RadioRow> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.widget.radioModel.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: HexColor('#182545'),
        ),
      ),
      leading: RadioImage(imageUrl: this.widget.radioModel.image,),
      subtitle: Text(this.widget.radioModel.description, maxLines: 2),
      trailing: Wrap(
        spacing: -10.0,
        runSpacing: 0.0,
        children: [
          _playStopButton(),
          _addFavoriteButton(),
        ],
      ),
    );
  }

  Widget _playStopButton() {
    return IconButton(
      icon: Icon(Icons.play_circle_filled),
      onPressed: () {},
    );
  }

  Widget _addFavoriteButton() {
    return IconButton(
      icon: Icon(Icons.favorite_border),
      color: HexColor('#9097A6'),
      onPressed: () {},
    );
  }
}
