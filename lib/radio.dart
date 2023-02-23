import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  const RadioExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RadioExample();
}

class _RadioExample extends State<RadioExample> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Example'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text('Dart'),
            leading: Radio<String>(
              value: 'Dart',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
          ),
          ListTile(
            title: Text('Kotlin'),
            leading: Radio<String>(
              value: 'Kotlin',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
          ),
          ListTile(title: Text('Swift'),
          leading: Radio<String>(
            value: 'Swift',
            groupValue: language,
            onChanged: (String? value){
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),)
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$language selected'),
      duration: Duration(seconds: 1),
    ));
  }
}
