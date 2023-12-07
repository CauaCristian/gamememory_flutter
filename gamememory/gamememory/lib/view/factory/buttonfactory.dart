import '../components/button.dart';
import 'package:flutter/material.dart';

class ButtonFactory {
  static Button createButton(Color color, void Function() function) {
    return Button(color: color, function: function);
  }
}