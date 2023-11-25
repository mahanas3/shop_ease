import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/provider/cart_provider.dart';
import 'package:badges/src/badge.dart' as badge;
import 'package:shop_ease/provider/shop_provider.dart';
import 'package:shop_ease/screens/shop_screen/sleevless_screen.dart';
import 'package:shop_ease/screens/shop_screen/tshirt_screen.dart';
import 'package:shop_ease/utilities/dimensions.dart';
import '../favourite_screen/favourite_page.dart';
import 'croptops_screen.dart';
import 'kurthi_screen.dart';

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
        backgroundColor: const Color(0x000000ff),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black87,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: badge.Badge(
                    position: BadgePosition.topEnd(),
                    badgeContent: SizedBox(
                      height: Dimensions.heightCalc(context, 17),
                      width: Dimensions.widthCalc(context, 17),
                      child: Center(
                        child: Text(context
                            .read<CartProvider>()
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
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: Text(
            'Women’s tops',
            style: TextStyle(
                fontSize: Dimensions.heightCalc(context, 30),
                color: Colors.black87,
                fontFamily: 'Metropolis'),
          ),
        ),
        SizedBox(
          height: Dimensions.heightCalc(context, 20),
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
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Tab(
                    child: Text(
                      'T-Shirts',
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: Dimensions.heightCalc(context, 18),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Tab(
                    child: Text('Crop tops',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: Dimensions.heightCalc(context, 18),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Tab(
                    child: Text('Sleeveless',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: Dimensions.heightCalc(context, 18),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Tab(
                    child: Text('Kurthies',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: Dimensions.heightCalc(context, 18),
                        )),
                  ),
                ),
              ]),
        ),
        SizedBox(
          height: Dimensions.heightCalc(context, 20),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: Dimensions.heightCalc(context, 50),
            color: Colors.white,
            child: Row(
              children: [
                const Icon(Icons.filter, color: Colors.black),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    context.read<ShopProvider>().filter(context);
                  },
                  child: const Text(
                    'Filters',
                    style: TextStyle(fontFamily: 'Metropolis2'),
                  ),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 40),
                ),
                const Icon(Icons.vertical_align_center),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Price: lowest to high',
                  style: TextStyle(fontFamily: 'Metropolis2'),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 40),
                ),
                const Icon(Icons.view_list_outlined)
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
