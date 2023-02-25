import 'package:flutter/material.dart';
import 'package:flutter_app/navigation/second_screen.dart';

class FirstScreen extends StatelessWidget {
  // const FirstScreen({Key? key}) : super(key: key);
  final String message = 'Hello from frist screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            //pindah halaman tanpa membawa data
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return const SecondScreen();
            // }));
            //pindah halaman dengan memabwa data
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen(message)));
          },
        ),
      ),
    );
  }
}
