import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String text;
  final Function onPressed;
  const Botao({Key key, @required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: FloatingActionButton.extended(
        onPressed: onPressed,
        label: Text(
          '$text',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
