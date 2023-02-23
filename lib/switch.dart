import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SwitchExample();
}

class _SwitchExample extends State<SwitchExample> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Switch'),
      ),
      body: Switch(
        value: lightOn,
        onChanged: (bool value){
          setState(() {
            lightOn = value;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(lightOn ? "Light On" : "Light Of"),
            duration: Duration(seconds: 1),)
          );
        },
      ),
    );
  }
}
