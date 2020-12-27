import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final Widget leading;
  final Function onPressed;
  final Color color;

  const Item(
      {Key key,
      this.titulo,
      this.subtitulo,
      this.onPressed,
      this.leading,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(18),
        leading: leading,
        subtitle: Text(subtitulo),
        title: AutoSizeText(
          '$titulo',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: color,
          ),
          maxLines: 1,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: color,
        ),
        onTap: onPressed,
      ),
    );
  }
}
