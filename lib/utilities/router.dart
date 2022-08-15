import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce/utilities/routes.dart';
import 'package:flutter_ecommerce/views/pages/landing_page.dart';
import 'package:flutter_ecommerce/views/pages/login_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(
        builder: (_) => LoginPage(),
      );

    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(
        builder: (_) => LandingPage(),
      );
  }
}
