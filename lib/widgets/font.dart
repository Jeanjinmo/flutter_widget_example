import 'package:flutter/material.dart';

class FontExample extends StatelessWidget {
  const FontExample({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Font Example')),
      body: const Center(
        child: Text(
          'Custom Font',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
