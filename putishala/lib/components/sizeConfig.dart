import 'package:flutter/material.dart';

// for responsive design
class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeH;
  static double? blockSizeV;

  void init(BuildContext context) {
    var size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
    blockSizeH = screenWidth! / 100;
    blockSizeV = screenHeight! / 100;
  }
}
