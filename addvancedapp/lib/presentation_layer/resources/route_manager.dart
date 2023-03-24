import 'package:addvancedapp/presentation_layer/forget_password/forget_view.dart';
import 'package:addvancedapp/presentation_layer/login/login_view.dart';
import 'package:addvancedapp/presentation_layer/main/main_view.dart';
import 'package:addvancedapp/presentation_layer/on_boarding/view/onboarding_view.dart';
import 'package:addvancedapp/presentation_layer/register/register_view.dart';
import 'package:addvancedapp/presentation_layer/store_details/storedetails_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../splach/splach_view.dart';

class AppRoutes{
  static const String splashRoute ="/";
  static const String onboardingRoute ="/onboarding";
  static const String loginRoute ="/login";
  static const String registerRoute ="/register";
  static const String forgetPassword ="/forget";
  static const String mainRoute ="/main";
  static const String storeDetailsRoute = "/storeDetails";
  static final GoRouter router=GoRouter(routes: [
    GoRoute(
      path: splashRoute,
      builder: (BuildContext context,GoRouterState state)=>Splach_view(),
    ),
    GoRoute(
      path: onboardingRoute,
      builder: (BuildContext context,GoRouterState state)=>OnBoarding_view(),
    ),
    GoRoute(
      path: loginRoute,
      builder: (BuildContext context,GoRouterState state)=>Login_view(),
    ),
    GoRoute(
      path: registerRoute,
      builder: (BuildContext context,GoRouterState state)=>Register_view(),
    ),
    GoRoute(
      path: forgetPassword,
      builder: (BuildContext context,GoRouterState state)=>Forget_view(),
    ),
    GoRoute(
      path: mainRoute,
      builder: (BuildContext context,GoRouterState state)=>Main_view(),
    ),
    GoRoute(
      path: storeDetailsRoute,
      builder: (BuildContext context,GoRouterState state)=>StoreDetails_view(),
    )

  ]);
}