import 'package:addvancedapp/presentation_layer/resources/route_manager.dart';
import 'package:addvancedapp/presentation_layer/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();
  static final MyApp instance=MyApp._internal();
  factory MyApp()=>instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
      theme: get_ApplicationTheme(),
    );
  }
}
