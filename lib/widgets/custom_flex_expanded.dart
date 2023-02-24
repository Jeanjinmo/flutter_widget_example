import 'package:flutter/material.dart';

class ExpandFlexExample extends StatelessWidget {
  const ExpandFlexExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Formula Expanded Extended'),
        ),
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Expanded(
                      child: Container(
                          color: Colors.deepOrange[100],
                          child: Text('Row 1 dari kolum Expanded')),
                    ),
                    Expanded(
                      child: Container(
                          color: Colors.deepOrange[200],
                          child: Text('Row 2 dari kolum Expanded')),
                    ),
                    Expanded(
                      child: Container(
                          color: Colors.deepOrange[300],
                          child: Text('Row 3 dari kolum Expanded')),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
                child: Column(
              children: [
                Expanded(
                    child: Container(
                  /*jika kita kasih heigh/width sekira 200, maka akan error.
                    karena layar dari column lebih kecil dari itu. maka caranya
                    adalah memberikan flex/expanded*/
                  color: Colors.black26,
                )),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  color: Colors.purpleAccent.shade400,
                  child: const Center(
                    child: Text('Ini Text Flexible di column',
                        style: TextStyle(fontSize: 20)),
                  ),
                ))
              ],
            )),
            Flexible(
              child: Container(
                color: Colors.yellowAccent,
                width: double.infinity,
                height: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Ini Teks 1 Row',
                        style: TextStyle(
                            background: Paint()
                              ..color = Colors.deepOrangeAccent),
                      ),
                      Text(
                        'Ini Teks 2 Row',
                        style: TextStyle(
                            background: Paint()
                              ..color = Colors.deepOrangeAccent),
                      ),
                      Text(
                        'Ini Teks 3 Row',
                        style: TextStyle(
                            background: Paint()
                              ..color = Colors.deepOrangeAccent),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.purpleAccent,
                child: Center(
                  child: Text(
                    'Ini Text Baris 1',
                    style: TextStyle(
                        fontSize: 20, background: Paint()..color = Colors.red),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.lightGreen,
            )),
            Expanded(
                child: Container(
              color: Colors.limeAccent,
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.lightBlueAccent,
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.indigo,
                ))
              ],
            )),
            Expanded(
                child: Container(
              width: double.infinity,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('baris satu',
                      style: TextStyle(
                          background: Paint()
                            ..color = Colors.deepOrangeAccent)),
                  Text('baris satu',
                      style: TextStyle(
                          background: Paint()
                            ..color = Colors.deepOrangeAccent)),
                  Text('baris satu',
                      style: TextStyle(
                          background: Paint()
                            ..color = Colors.deepOrangeAccent)),
                ],
              ),
            ))
          ],
        ));
  }
}
