import 'package:addvancedapp/presentation_layer/resources/color_manger.dart';
import 'package:flutter/material.dart';

Container buildDot(int index, BuildContext context,int currentindex) {
  return Container(
    height: 10,
    width:10,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: index==currentindex?Color_Manger.gray:Colors.white,
    ),
  );
}
