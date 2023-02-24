// example row and collumn
import 'package:flutter/material.dart';

class RowCustom extends StatelessWidget {
  const RowCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down)
      ],
    );
  }
}

class ColumnCustom extends StatelessWidget {
  const ColumnCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Text(
          'Sebuah Judul',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text('Lorem Ipsum Dolor Jamet'),
      ],
    );
  }
}
