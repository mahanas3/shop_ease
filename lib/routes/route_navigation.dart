import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_ease/home/Menshodies.dart';
import 'package:shop_ease/home/streetcloths_screen.dart';
import 'package:shop_ease/routes/route_name.dart';
import 'package:shop_ease/screens/bottomnavigation.dart';
import 'package:shop_ease/screens/forgotpassword_screen.dart';
import 'package:shop_ease/shop_screen/womens_tops.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';
import '../shop_screen/categories1.dart';

class AppRoute {
  static Route<dynamic> routesetting(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.loginscreen:
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );
      case RouteName.signupscreen:
        return MaterialPageRoute(
          builder: (context) => const SignUp(),
        );
      case RouteName.homescreen:
        return MaterialPageRoute(
          builder: (context) => const BottomNavigation(),
        );
      case RouteName.forgotscreen:
        return MaterialPageRoute(
          builder: (context) => const ForgotPassword(),
        );
      case RouteName.streetcolths:
        return MaterialPageRoute(
          builder: (context) => const StreetCloths(),
        );
      case RouteName.newbutton:
        return MaterialPageRoute(
          builder: (context) => const MensHoodies(),
        );
      case RouteName.womenstop:
        return MaterialPageRoute(
          builder: (context) => const WomenTop(),
        );
      case RouteName.categories:
        return MaterialPageRoute(builder: (context) => const Catergories());

      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Login(),
          );
        }
    }
  }
}
