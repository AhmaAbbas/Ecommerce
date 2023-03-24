import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/features/register/presentation/views/login.dart';

import '../../features/register/presentation/views/register.dart';
import '../../features/register/socialhome/sociallayout.dart';

class App_Routers{
  //static const String home="/";
  static const String login="/login";
  static const String home="/sociallayout";
static GoRouter router=GoRouter(
    routes: [
      GoRoute(path: '/',
        builder: (BuildContext context,GoRouterState state)=>  const Register(),
      ),
      GoRoute(path: login,
        builder: (BuildContext context,GoRouterState state)=> const Log_in()
      ),
      GoRoute(
        path: home,
        builder: (BuildContext context,GoRouterState state )=>const Social_Layout()
      )
    ]
);
}