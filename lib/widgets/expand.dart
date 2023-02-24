import 'package:flutter/material.dart';

class ExapandedExample extends StatelessWidget {
  const ExapandedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expand Example'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              child: Container(
                color: Colors.yellow[100],
              )),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green[200],
            ),
          ),
          Expanded(
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.purple[300],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
