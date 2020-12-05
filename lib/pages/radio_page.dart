import 'package:flutter/material.dart';
import '../models/radio_model.dart';
import '../widgets/radio_row.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  RadioModel radio = RadioModel(
    id: 1,
    name: 'Test Radio',
    description: 'Sample radio description',
    image: 'http://via.placeholder.com/800',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RadioRow(radioModel: radio),
          RadioRow(radioModel: radio),
        ]
       ),
    );
  }
}