import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/models/colors.dart';

class MyButton extends StatefulWidget {
  String label;

  MyButton({this.label = ""});

  @override
  MyButtonState createState() => new MyButtonState(label: label);
}

class MyButtonState extends State<MyButton> { 
  bool highlight = false;
  String label;

  MyButtonState({this.label = ""});

  @override
  Widget build(BuildContext covariant) {
    return new RaisedButton(
      child: new Text(label, style: TextStyle(color: highlight ? Colors.white : Colors.orange, fontSize: 20.0, fontWeight: FontWeight.w300),),
      
      elevation: 0.0,
      highlightElevation: 0.0,

      color: highlight ? MyColors.opaque(0.4) : MyColors.opaque(1.0),
      splashColor: MyColors.opaque(0.0),
      highlightColor: MyColors.opaque(0.0),
      onHighlightChanged: (bool highlight) {
        setState(() {
          this.highlight = highlight;
        });
      },

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

      onPressed: () {

      },
    );
  }

}