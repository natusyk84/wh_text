import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String textButton;


  const MyText({required this.textButton, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textButton);
  }
}
