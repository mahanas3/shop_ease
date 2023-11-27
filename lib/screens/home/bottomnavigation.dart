import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ease/screens/bag_screen/mybag_screen.dart';
import 'package:shop_ease/screens/profile_screen/myprofile_page.dart';
import '../favourite_screen/favourite_page.dart';
import '../shop_screen/categories1.dart';
import 'fasionsale_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  List navigation = [
    const Home(),
    const Catergories(),
    const MyBag(),
    const Favourite(),
    const Profile(),
  ];

  void onitemTapped(int num) {
    if (num >= 0 && num < navigation.length) {
      setState(() {
        index = num;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigation[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.red,
        unselectedItemColor: const Color(0xff9B9B9B),
        onTap: onitemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: 'Bag'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
