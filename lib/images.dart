import 'package:flutter/material.dart';

class ImagesNetworkExample extends StatelessWidget {

  const ImagesNetworkExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Network Example')),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Contoh Image.network'),
            ),
            Image.network('https://github.com/dicodingacademy/assets/raw/main/flutter_fundamental_academy/android.png',
            height: 200,
            width: 300,),
            const Text('Contoh Image.asset'),
            Image.asset('images/android_black.png', width: 200, height: 300,)
          ],
        ),
      )
    );
  }
}
