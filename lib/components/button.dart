// ignore_for_file: deprecated_member_use, duplicate_ignore, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromARGB(82, 82, 82, 1);
  static const DEFAULT = Color.fromARGB(112, 112, 112, 1);
  static const OPERATION = Color.fromARGB(250, 158, 13, 1);
  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;
  
  // ignore: use_key_in_widget_constructors
  Button({required this.text, this.big = false, this.color = DEFAULT, required this.cb});
  // ignore: use_key_in_widget_constructors
  Button.big({required this.text, this.big = true, this.color = DEFAULT, required this.cb});
  // ignore: use_key_in_widget_constructors
  Button.operation(
      {required this.text, this.big = false, this.color = OPERATION, required this.cb});

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: color,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
