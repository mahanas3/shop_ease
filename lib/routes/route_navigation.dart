import 'package:flutter/material.dart';
import 'package:shop_ease/home/newcollection_screen.dart';
import 'package:shop_ease/home/streetcloths_screen.dart';
import 'package:shop_ease/routes/route_name.dart';
import 'package:shop_ease/screens/bottomnavigation.dart';
import 'package:shop_ease/screens/forgotpassword_screen.dart';
import 'package:shop_ease/shop_screen/womens_tops.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

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
          builder: (context) => const NewCollection(),
        );
      case RouteName.womenstop:
        return MaterialPageRoute(
          builder: (context) => const WomenTop(),
        );

      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Login(),
          );
        }
    }
  }
}
