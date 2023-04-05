import 'package:flutter/material.dart';

class Textforminput extends StatelessWidget {
  final TextEditingController texteditingcontroller;
  final bool ispass;
  final String hintText;
  final TextInputType textInputType;

  const Textforminput({super.key, required this.texteditingcontroller, this.ispass = false, required this.hintText, required this.textInputType});
  @override
  Widget build(BuildContext context) {
    final inputborder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context)
   );
    return TextFormField(controller: texteditingcontroller,
       decoration: InputDecoration(
        hintText: hintText,
        border: inputborder,
        focusedBorder: inputborder,
        enabledBorder: inputborder,
        filled: true,
        contentPadding: EdgeInsets.all(8),
       ),
       keyboardType: textInputType,
       obscureText: ispass,
    );
  }
}