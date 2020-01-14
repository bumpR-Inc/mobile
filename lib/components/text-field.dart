import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/models/colors.dart';

class MyField extends StatelessWidget {
  final TextStyle style = TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 20.0);

  final String label;
  final bool secret;

  String value;

  MyField({this.label = "", this.secret = false});

  @override
  Widget build(BuildContext covariant) {
    return new TextFormField(
      obscureText: secret,
      cursorColor: Colors.white,
      style: style,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none), borderRadius: BorderRadius.circular(10.0)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2.0, style: BorderStyle.solid), borderRadius: BorderRadius.circular(10.0)),

        fillColor: MyColors.opaque(0.4),
        filled: true,

        hintText: label,
        hintStyle: style, 
      ),
      onSaved: (value) {
        this.value = value;
      },
    );
  }

}