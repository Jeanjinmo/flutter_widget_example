import 'package:flutter/material.dart';

//ListView example
class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listview Example')),
      body: ListView(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: const Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black), color: Colors.grey),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 50.0),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black), color: Colors.grey),
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 50.0),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black), color: Colors.grey),
            child: const Center(
              child: Text(
                '4',
                style: TextStyle(fontSize: 50.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ListView example Dynamic list
class ListViewExampleList extends StatelessWidget {
  const ListViewExampleList({Key? key}) : super(key: key);
  final List<int> numberList = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Example List'),
      ),
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '$number',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

//Listview Builder Example
class ListViewExampleListBuilder extends StatelessWidget {
  final List alphabetList = const [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewExample ListBuilder'),
      ),
      body: ListView.builder(
          itemCount: alphabetList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.grey, border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  '${alphabetList[index]}',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            );
          }),
    );
  }
}

//Listview Separated
class ListViewExampleSeparated extends StatelessWidget{
  const ListViewExampleSeparated ({Key? key}) : super(key: key);
  final List listValue = const [1,2,3,4,5,'A','B','C','D','E'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Separated Example'),),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Text(
                  '${listValue[index]}',
                  style: const TextStyle(fontSize: 50.0),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index){
            return const Divider( //memberikan garis horizontal (default)
              color: Colors.red,
              thickness: 3,
            );
          },
          itemCount: listValue.length),
    );
  }
}