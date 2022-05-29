import 'package:flutter/material.dart';
import 'button_press.dart';
import 'text_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _textButton ='';
  int _counter = 0;
  void _textControl() {
    setState(() {
      _counter++;
      if (_counter.isEven) {
        _textButton = 'Number is even: $_counter';
      } else {
        _textButton = 'Number is odd $_counter';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Buttons',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            MyText(textButton: _textButton),
            const SizedBox(
              height: 20.0,
            ),
            MyButton(textControl:_textControl),
            // ElevatedButton(
            //   onPressed: _textControl,
            //   child: const Text('Press'),
            // ),
          ],
        ),
      ),
    );
  }
}
