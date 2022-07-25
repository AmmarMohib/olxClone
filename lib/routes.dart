import 'package:flutter/material.dart';
import 'package:olx_clone/routes/login/loginPage.dart';
import 'package:olx_clone/routes/login/terms_and_conditions.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginPage(),
      );
       case TAC.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const TAC(),
      );
      default: 
       return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("oops! Page not found"),
          ),
        ),
      );
  }
}
