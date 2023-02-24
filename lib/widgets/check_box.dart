import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget{
  const CheckBoxExample ({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CheckBoxExample();

}

class _CheckBoxExample extends State<CheckBoxExample>{
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CheckBox Example')),
      body: ListTile(
        title: Text('Agree/Disagree'),
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value){
            setState(() {
              agree = value!;
            });
          },
        ),
      ),
    );
  }

}