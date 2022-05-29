import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback textControl;
  const MyButton({required this.textControl,Key? key}) : super(key: key);


  @override
  Widget  build(BuildContext context) {
    return ElevatedButton(
      onPressed: textControl,
      child: const Text('Press'),
    );
  }
}
