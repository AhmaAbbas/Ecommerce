
import 'package:addvancedapp/presentation_layer/resources/font_manger.dart';
import 'package:addvancedapp/presentation_layer/resources/styels_manger.dart';
import 'package:addvancedapp/presentation_layer/resources/values_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_manger.dart';
ThemeData get_ApplicationTheme(){
  return ThemeData(
    //main colors
    primaryColor: Color_Manger.primary,
    primaryColorDark:Color_Manger.darkPrimary,
    primaryColorLight: Color_Manger.lightPrimary,
    disabledColor: Color_Manger.grey1,
    splashColor: Color_Manger.lightPrimary,
    //cardView Colors
    cardTheme: CardTheme(
      color: Color_Manger.white,
      shadowColor: Color_Manger.gray,
      elevation: AppSize.s4,
    ),
    //app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color:Color_Manger.primary,
      elevation: AppSize.s4,
      shadowColor: Color_Manger.lightPrimary,
      titleTextStyle: getRegular_TextStyle(color:Color_Manger.white,fontsize: FontSizeManger.s16),
    ),
    // text theme
    //button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: Color_Manger.grey1,
      buttonColor: Color_Manger.primary,
      splashColor: Color_Manger.lightPrimary,
    ),
    //elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegular_TextStyle(color: Color_Manger.white,fontsize: FontSizeManger.s17),
        backgroundColor: Color_Manger.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        )
      )
    ),
    //text theme
    textTheme: TextTheme(
      headlineMedium: getRegular_TextStyle(color: Color_Manger.darkgray,fontsize: FontSizeManger.s14),
      headlineLarge: getSemibold_TextStyle(color: Color_Manger.darkgray,fontsize: FontSizeManger.s16),
      displayLarge: getSemibold_TextStyle(color: Color_Manger.darkgray,fontsize: FontSizeManger.s16),
      titleMedium:getmedium_TextStyle(color: Color_Manger.primary,fontsize: FontSizeManger.s16),
      bodySmall:getRegular_TextStyle(color: Color_Manger.grey1),
      bodyLarge:getRegular_TextStyle(color: Color_Manger.gray)
    ),
    //input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p12),
      hintStyle: getRegular_TextStyle(color: Color_Manger.gray,fontsize: FontSizeManger.s14),
      labelStyle: getmedium_TextStyle(color: Color_Manger.gray,fontsize: FontSizeManger.s14),
      errorStyle: getRegular_TextStyle(color: Color_Manger.error),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color_Manger.primary,width: AppSize.s1_5),
        borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color_Manger.gray,width: AppSize.s1_5),
        borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color_Manger.error,width: AppSize.s1_5),
        borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder:  OutlineInputBorder(
        borderSide: BorderSide(color: Color_Manger.primary,width: AppSize.s1_5),
        borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    )
  );
}