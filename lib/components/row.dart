import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/models/colors.dart';

class MyRow extends StatelessWidget {
  List<Container> children = [];
  MainAxisAlignment mainAxisAlignment;
  CrossAxisAlignment crossAxisAlignment;

  MyRow(List<Widget> children, {double spacing = 0, this.mainAxisAlignment = MainAxisAlignment.center, this.crossAxisAlignment = CrossAxisAlignment.center}) {
    for (var i = 0; i < children.length ; i++) {
      this.children.add(new Container(
        margin: EdgeInsets.only(left: i == 0 ? 0 : spacing, right: i == children.length - 1 ? 0 : spacing),
        child: children.elementAt(i),
      ));
    }
  }

  

  @override
  Widget build(BuildContext covariant) {
    return new Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: children != null ? children : []
    );
  }

}