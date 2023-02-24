import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  const ContainerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue, //tanpa Dekoreasi Container
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red,
          border: Border.all(color: Colors.black, width: 5),
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(color: Colors.green, offset: Offset(3, 6), blurRadius: 10)
          ]),
      width: 150,
      height: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 8, top: 8),
      child: const Text(
        'HI',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}