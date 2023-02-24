import 'package:flutter/material.dart';

//contoh Textfield menggunakan Onchanged
class TextFieldExampleOnChanged extends StatefulWidget {
  const TextFieldExampleOnChanged({Key? key}) : super(key: key);

  @override
  State<TextFieldExampleOnChanged> createState() =>
      _TextFieldExampleOnChanged();
}

class _TextFieldExampleOnChanged extends State<TextFieldExampleOnChanged> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Widget Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(child:Text('TextInput dengan OnChanged') , alignment: Alignment.centerLeft,),
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Write your name here',
                        labelText: 'Your name'),
                    onChanged: (String value) {
                      setState(() {
                        _name = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text('Submit'),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text('Hello $_name'),
                            );
                          });
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Align(child:Text('TextInput dengan Controller') , alignment: Alignment.centerLeft,),
            Container(child: const TextFieldExampleController())
          ],
        ),
      ),
    );
  }
}

class TextFieldExampleController extends StatefulWidget {
  const TextFieldExampleController({Key? key}) : super(key: key);

  @override
  State<TextFieldExampleController> createState() =>
      _TextFieldExampleController();
}

class _TextFieldExampleController extends State<TextFieldExampleController> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
              hintText: 'Write your name here', labelText: 'Your name'),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          child: Text('Submit'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text('Hello, ${_controller.text}'),
                  );
                });
          },
        )
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
