import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Contoh Dropdown Button'),
                    DropdownButton<String>(
                        items: const <DropdownMenuItem<String>>[
                          DropdownMenuItem<String>(
                            value: 'Dart',
                            child: Text('Dart'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Kotlin',
                            child: Text('Kotlin'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Swift',
                            child: Text('Swift'),
                          ),
                        ],
                        value: language,
                        hint: const Text('select language'),
                        onChanged: (String? value) {
                          setState(() {
                            language = value;
                          });
                        }),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contoh Elevated Button'),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Elevated Button')),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contoh Text Button'),
                  TextButton(
                      onPressed: () {}, child: const Text('Text Button')),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contoh Outlined Button'),
                  OutlinedButton(
                      onPressed: () {}, child: const Text('OutlinedButton')),
                ],
              ),
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Contoh Icon Button'),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add_box))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
