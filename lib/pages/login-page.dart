import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/components/text-field.dart';
import 'package:mobile/components/column.dart';
import 'package:mobile/components/row.dart';
import 'package:mobile/components/logo.dart';
import 'package:mobile/components/button.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext covariant) {
    return new Container(
      margin: EdgeInsets.all(40.0),
      child: new MyColumn(
        [
          new Logo(),
          new MyField(label: "Username"),
          new MyField(label: "Password", secret: true),
          new MyRow(
            [new MyButton(label: "Login",), new MyButton(label: "Sign Up",)],
            spacing: 5.0,
          )
        ],
        spacing: 10.0,
      ),
    );
  }

}