import 'dart:async';

import 'package:addvancedapp/presentation_layer/resources/assets_manager.dart';
import 'package:addvancedapp/presentation_layer/resources/color_manger.dart';
import 'package:addvancedapp/presentation_layer/resources/constants_manager.dart';
import 'package:addvancedapp/presentation_layer/resources/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splach_view extends StatefulWidget {
  const Splach_view({Key? key}) : super(key: key);
  @override
  _Splach_viewState createState() => _Splach_viewState();
}

class _Splach_viewState extends State<Splach_view> {
  Timer? _timer;
  _startDelay(){
    _timer=Timer(Duration(seconds: AppConstants.splash_duration), _getnext);
  }
  _getnext(){
    GoRouter.of(context).push(AppRoutes.onboardingRoute);
  }
  @override
  void initState() {
    // TODO: implement initState
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color_Manger.primary,
          body: const Center(
            child: Image(image: AssetImage(ImageAssets.splashlogo)),),
    ));
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
  }
}
