import 'package:flutter/material.dart';
import 'dart:math';


class MyColors {

  static Color opaque(double percent) {
    int a = (percent*255).round();
    return Color.fromARGB(a, 255, 255, 255);
  }
  
  static Color blue() {
    return Colors.indigo;
    // return Color.fromRGBO(75, 110, 163, 1.0);
  }

  static Color offWhite() {
    int mag = 240;
    return Color.fromRGBO(mag, mag, mag, 1.0);
  }

  static Color yellow() {
    return Colors.amber;
    // return Color.fromRGBO(243, 201, 94, 1.0);
  }

  static Color semiTransYellow() {
    return Color.fromRGBO(243, 201, 94, 0.5);
  }

  static int random255() {
    Random rand = new Random();
    return rand.nextInt(256);
  }

  static Color random() {
    return Color.fromRGBO(random255(), random255(), random255(), 1.0);
  }
  
}