import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ResponsivePage Example'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
                //return 1 container
                children: _generateContainers()
                );
          } else if (constraints.maxWidth < 900) {
            return GridView.count(
              //return 2 container
              crossAxisCount: 2,
              children: _generateContainers(),
            );
          } else {
            return GridView.count(
              //return 6 container
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }

  List<Widget> _generateContainers() {
    return List.generate(20, (index) {
      return Container(
        margin: EdgeInsets.all(8),
        color: Colors.grey,
        height: 200,
      );
    });
  }
}
