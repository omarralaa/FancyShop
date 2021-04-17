import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  final Function handler;

  const BackButton({this.handler});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.keyboard_arrow_left),
      onPressed: handler,
    );
  }
}
