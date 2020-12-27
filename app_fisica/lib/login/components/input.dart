import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hint;
  final String erro;
  final Icon icon;
  final TextEditingController controller;

  const Input({Key key, this.hint, this.erro, this.icon, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          hintText: hint,
          suffixIcon: icon,
          contentPadding: EdgeInsets.only(
            bottom: 20,
            top: 20,
            right: 5,
            left: 20,
          ),
        ),
        style: TextStyle(
          fontSize: 20,
        ),
        validator: (x) {
          if (x.isEmpty) {
            return erro;
          }
        },
      ),
    );
  }
}
