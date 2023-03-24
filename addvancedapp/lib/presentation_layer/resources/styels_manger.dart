

import 'package:addvancedapp/presentation_layer/resources/font_manger.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle({required FontWeight fontWeight, required double fontsize, required Color color}){
  return TextStyle(
    fontSize: fontsize,
    fontWeight: fontWeight,
    color: color,
  );
}
// Regular
TextStyle getRegular_TextStyle({double fontsize=FontSizeManger.s12,required Color color}){
  return _getTextStyle(color:color ,fontWeight: FontWeightManger.regular,fontsize: fontsize);
}

//SemiBold
TextStyle getSemibold_TextStyle({double fontsize=FontSizeManger.s12,required Color color}){
  return _getTextStyle(color:color ,fontWeight: FontWeightManger.semibold,fontsize: fontsize);
}

//Bold
TextStyle getbold_TextStyle({double fontsize=FontSizeManger.s12,required Color color}){
  return _getTextStyle(color:color ,fontWeight: FontWeightManger.bold,fontsize: fontsize);
}

//Light
TextStyle getLight_TextStyle({double fontsize=FontSizeManger.s12,required Color color}){
  return _getTextStyle(color:color ,fontWeight: FontWeightManger.light,fontsize: fontsize);
}

//Medium
TextStyle getmedium_TextStyle({double fontsize=FontSizeManger.s12,required Color color}){
  return _getTextStyle(color:color ,fontWeight: FontWeightManger.medium,fontsize: fontsize);
}
