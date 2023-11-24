import 'package:flutter/material.dart';
import 'package:shop_ease/routes/route_name.dart';
import 'package:shop_ease/screens/home/newcollections.dart';
import 'package:shop_ease/screens/profile_screen/addshippingaddress.dart';
import 'package:shop_ease/screens/profile_screen/order_screen.dart';
import 'package:shop_ease/screens/profile_screen/orderdetails_screen.dart';
import 'package:shop_ease/screens/profile_screen/settings_screen.dart';
import 'package:shop_ease/screens/profile_screen/shippingaddress_screen.dart';
import '../screens/auth_screen/forgott_screen.dart';
import '../screens/auth_screen/login_screen.dart';
import '../screens/auth_screen/signup_screen.dart';
import '../screens/favourite_screen/favourite_page.dart';
import '../screens/home/blackdress_screen.dart';
import '../screens/home/bottomnavigation.dart';
import '../screens/home/menshoodies_screen.dart';
import '../screens/home/newitems.dart';
import '../screens/home/streetcloths_screen.dart';
import '../screens/shop_screen/categories1.dart';
import '../screens/shop_screen/newkids_screen.dart';
import '../screens/shop_screen/newmens_screen.dart';
import '../screens/shop_screen/newwomens_screen.dart';
import '../screens/shop_screen/womenstops_screen.dart';

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
      //bottomsheet
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
      case RouteName.menshoodies:
        return MaterialPageRoute(builder: (context) => const MensHoodies());
      case RouteName.favourite:
        return MaterialPageRoute(builder: (context) => const Favourite());
      case RouteName.myOrder:
        return MaterialPageRoute(builder: (context) => const MyOrder());
      case RouteName.orderDetails:
        return MaterialPageRoute(builder: (context) => const OrderDetails());
      case RouteName.shippingAddress:
        return MaterialPageRoute(builder: (context) => const ShippingAddress());
      case RouteName.addShippingAddress:
        return MaterialPageRoute(
            builder: (context) => const AddShippingAddress());
      case RouteName.saveAddressButton:
        return MaterialPageRoute(builder: (context) => const ShippingAddress());
      case RouteName.settings:
        return MaterialPageRoute(builder: (context) => const Settings());
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Login(),
          );
        }
    }
  }
}
