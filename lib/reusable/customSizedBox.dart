import 'package:flutter/material.dart';

extension CustomeSizedBox on int {
  SizedBox get h {
    return SizedBox(height: this.toDouble(),);
  }

  SizedBox get w {
    return SizedBox(width: this.toDouble(),);
  }
} 