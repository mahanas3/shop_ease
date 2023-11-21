import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_ease/provider/screen_provider.dart';
import 'package:shop_ease/routes/route_navigation.dart';

bool? email;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  email = prefs?.getBool('islogedIn') ?? false;
  runApp(ChangeNotifierProvider(
    create: (context) => ScreenProvider(),
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
