import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/screen_provider.dart';
import 'package:shop_ease/shop_screen/kurthi_screen.dart';
import 'package:shop_ease/shop_screen/croptops_screen.dart';
import 'package:shop_ease/shop_screen/sleeveless_screen.dart';
import 'package:shop_ease/shop_screen/tshirt_screen.dart';
import 'package:badges/src/badge.dart' as badge;

import '../screens/favourite_screen/favourite_page.dart';

class WomenTop extends StatefulWidget {
  const WomenTop({super.key});

  @override
  State<WomenTop> createState() => _WomensTopsState();
}

class _WomensTopsState extends State<WomenTop>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.search_off_outlined,
                  size: 35,
                  color: Colors.black87,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: badge.Badge(
                    position: BadgePosition.topEnd(),
                    badgeContent: SizedBox(
                      height: 17,
                      width: 17,
                      child: Center(
                        child: Text(context
                            .read<ScreenProvider>()
                            .cart
                            .length
                            .toString()),
                      ),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Favourite()));
                        },
                        icon: const Icon(CupertinoIcons.cart),
                        color: Colors.black87,
                        iconSize: 35),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(left: 15, top: 20),
          child: Text(
            'Women’s tops',
            style: TextStyle(
                fontSize: 30, color: Colors.black87, fontFamily: 'Metropolis'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: TabBar(
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
              ),
              controller: _tabController,
              isScrollable: true,
              tabs: const [
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 5),
                  child: Tab(
                    child: Text(
                      'T-Shirts',
                      style: TextStyle(fontFamily: 'POPINS', fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 5),
                  child: Tab(
                    child: Text('Crop tops',
                        style: TextStyle(fontFamily: 'POPINS', fontSize: 18)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 5),
                  child: Tab(
                    child: Text('Sleeveless',
                        style: TextStyle(fontFamily: 'POPINS', fontSize: 18)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 5),
                  child: Tab(
                    child: Text('Kurthies',
                        style: TextStyle(fontFamily: 'POPINS', fontSize: 18)),
                  ),
                ),
              ]),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            color: Colors.white,
            child: const Row(
              children: [
                Icon(Icons.filter, color: Colors.black),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Filters',
                  style: TextStyle(fontFamily: 'Metropolis2'),
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(Icons.vertical_align_center),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Price: lowest to high',
                  style: TextStyle(fontFamily: 'Metropolis2'),
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(Icons.view_list_outlined)
              ],
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
              controller: _tabController,
              children: const [Tshirt(), Croptops(), Sleeveless(), Kurthies()]),
        ),
      ]),
    );
  }
}
