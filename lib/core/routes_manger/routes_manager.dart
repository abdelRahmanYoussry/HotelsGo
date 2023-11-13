import 'package:flutter/material.dart';

import '../../features/home/presentaion/pages/home_screen.dart';
import '../../features/splash/splash_screen.dart';
import '../ui_resourses/strings_manager.dart';

class Routes {
  static const String splashRoute = "splash";
  static const String homeRoute = "home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.homeRoute:
        //   // initHomeModule();
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
