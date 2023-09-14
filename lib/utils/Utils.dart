import 'dart:ui';
import 'package:flutter/material.dart';


TextStyle? mTextSize21(){
  return TextStyle(fontSize:21,fontWeight: FontWeight.bold);
}

TextStyle? mTextSize11({
  Color textColor=Colors.orange,
  FontWeight fontWeight=FontWeight.w200
}) {
  return TextStyle(fontSize:11, fontWeight: fontWeight,color: textColor);
}
