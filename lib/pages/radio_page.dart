import 'package:flutter/material.dart';
import 'package:flutter_streaming_radio/utils/hex_color.dart';
import '../models/radio_model.dart';
import '../widgets/radio_row.dart';
import '../widgets/now_playing.dart';

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
          _appHeader(),
          _searchBar(),
          _radiosList(),
          NowPlaying(radioName: 'Playing Radio', radioImage: 'http://via.placeholder.com/800'),
        ]
       ),
    );
  }

  Widget _appHeader() {
    return Container(
      width: double.infinity,
      color: HexColor('#182545'),
      height: 80,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            'Radio App',
            style: TextStyle(
              fontSize: 30,
              color: HexColor('#FFFFFF'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.search),
          Flexible(
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(5.0),
                hintText: 'Search Radio',
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget _radiosList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: ListView(
          children: [
            ListView.separated(
              itemCount: 10,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RadioRow(radioModel: radio,);
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ],
        ),
      ),
    );
  }
}
