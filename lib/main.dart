import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/screen_provider.dart';
import 'package:shop_ease/routes/route_navigation.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ScreenProvider(),
    child: const Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: AppRoute.routesetting,
    );
  }
}
