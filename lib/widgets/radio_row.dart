import 'package:flutter/material.dart';
import '../utils/hex_color.dart';
import '../models/radio_model.dart';

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
      leading: _radioImage(this.widget.radioModel.image),
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

  Widget _radioImage(url, {size}) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(url),
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