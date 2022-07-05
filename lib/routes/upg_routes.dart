import 'package:flutter/material.dart';
import 'package:upguzapp/screens/splash/splash_page.dart';

class UpgRoutes {
  static final UpgRoutes _instance = UpgRoutes._init();
  static UpgRoutes get instance => _instance;
  UpgRoutes._init();
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case "/splash":
        return MaterialPageRoute(builder: (ctx) => const SplashPage());
    }
  }
}
