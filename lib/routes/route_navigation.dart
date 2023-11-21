import 'package:flutter/material.dart';
import 'package:shop_ease/home/newcollections.dart';
import 'package:shop_ease/home/blackdress_screen.dart';
import 'package:shop_ease/home/newitems.dart';
import 'package:shop_ease/home/streetcloths_screen.dart';
import 'package:shop_ease/routes/route_name.dart';
import 'package:shop_ease/screens/bottomnavigation.dart';
import 'package:shop_ease/screens/forgotpassword_screen.dart';
import 'package:shop_ease/shop_screen/kidsnew_screen.dart';
import 'package:shop_ease/shop_screen/mensnew_screen.dart';
import 'package:shop_ease/shop_screen/womens_tops.dart';
import 'package:shop_ease/shop_screen/womensnew_screen.dart';
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
      case RouteName.newItems:
        return MaterialPageRoute(builder: (context) => const NewItems());

      case RouteName.womensnew:
        return MaterialPageRoute(builder: (context) => const WomenNew());
      case RouteName.mensnew:
        return MaterialPageRoute(builder: (context) => const MenNew());
      case RouteName.kidsnew:
        return MaterialPageRoute(builder: (context) => const KidsNew());
      case RouteName.blackdress:
        return MaterialPageRoute(builder: (context) => const BlackDresses());

      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Login(),
          );
        }
    }
  }
}
