import 'package:flutter/material.dart';
import './sizeConfig.dart';

Color kPrimaryColor = const Color(0xffFC9D45);
Color kSecondaryColor = const Color.fromARGB(201, 11, 88, 202);

final kTitle = TextStyle(
  fontFamily: 'klasik',
  fontSize: SizeConfig.blockSizeH! * 10,
  color: kSecondaryColor,
);

final kBodyText1 = TextStyle(
    color: kSecondaryColor,
    fontSize: SizeConfig.blockSizeH! * 4.5,
    fontWeight: FontWeight.bold);
