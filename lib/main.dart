import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_ease/provider/cart_provider.dart';
import 'package:shop_ease/provider/home_provider.dart';
import 'package:shop_ease/provider/profile_provider.dart';
import 'package:shop_ease/provider/auth_provider.dart';
import 'package:shop_ease/provider/shop_provider.dart';
import 'package:shop_ease/routes/route_navigation.dart';

bool? email;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeProvider()),
      ChangeNotifierProvider(create: (context) => ProfileProvider()),
      ChangeNotifierProvider(create: (context) => CartProvider()),
      ChangeNotifierProvider(create: (context) => AuthProvider()),
      ChangeNotifierProvider(create: (context) => ShopProvider()),
    ],
    child: const Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: email == false ? '/' : '/home',
      onGenerateRoute: AppRoute.routesetting,
    );
  }
}
