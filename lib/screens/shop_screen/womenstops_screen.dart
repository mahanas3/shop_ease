import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ease/custom_widget/custom_button.dart';
import 'package:shop_ease/provider/favourite_provider.dart';
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
                  size: 25,
                  color: Colors.black87,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: badge.Badge(
                    position: BadgePosition.topEnd(),
                    badgeContent: SizedBox(
                      height: Dimensions.heightCalc(context, 13),
                      width: Dimensions.widthCalc(context, 13),
                      child: Center(
                        child: Text(context
                            .read<FavouriteProvider>()
                            .favourites
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
                        iconSize: 25),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 120, top: 20),
          child: Text(
            'Women’s tops',
            style: TextStyle(
                fontSize: Dimensions.heightCalc(context, 28),
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
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(Icons.filter, color: Colors.black),
                ),
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
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25))),
                        builder: (BuildContext context) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, left: 10),
                                child: Text(
                                  'Sort by',
                                  style: TextStyle(
                                      fontSize:
                                          Dimensions.heightCalc(context, 24),
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, right: 220),
                                child: Text(
                                  'Popular',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis2',
                                      fontSize:
                                          Dimensions.heightCalc(context, 20)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 220),
                                child: Text(
                                  'Newest',
                                  style: TextStyle(
                                      fontSize:
                                          Dimensions.heightCalc(context, 20),
                                      fontFamily: 'Metropolis2'),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 140),
                                child: Text(
                                  'Customer review',
                                  style: TextStyle(
                                      fontSize:
                                          Dimensions.heightCalc(context, 20),
                                      fontFamily: 'Metropolis2'),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 100),
                                child: Text(
                                  'Price: lowest to high',
                                  style: TextStyle(
                                      fontSize:
                                          Dimensions.heightCalc(context, 20),
                                      fontFamily: 'Metropolis2'),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 100),
                                child: Text(
                                  'Price: highest to low',
                                  style: TextStyle(
                                      fontSize:
                                          Dimensions.heightCalc(context, 20),
                                      fontFamily: 'Metropolis2'),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Price: lowest to high',
                    style: TextStyle(fontFamily: 'Metropolis2'),
                  ),
                ),
                SizedBox(
                  width: Dimensions.widthCalc(context, 40),
                ),
                InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25))),
                        builder: (context) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 50,
                                ),
                                child: Text(
                                  'Select size',
                                  style: TextStyle(
                                      fontSize:
                                          Dimensions.heightCalc(context, 24),
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 10, right: 10),
                                child: Stack(children: [
                                  Container(
                                    width: double.infinity,
                                    height: Dimensions.heightCalc(context, 150),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: Dimensions.heightCalc(
                                              context, 40),
                                          width: Dimensions.widthCalc(
                                              context, 100),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.black87)),
                                          child: Center(
                                            child: Text('XS',
                                                style: TextStyle(
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 20),
                                                    fontFamily: 'Metropolis2')),
                                          ),
                                        ),
                                        SizedBox(
                                          width:
                                              Dimensions.widthCalc(context, 15),
                                        ),
                                        Container(
                                          height: Dimensions.heightCalc(
                                              context, 40),
                                          width: Dimensions.widthCalc(
                                              context, 100),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.black87)),
                                          child: Center(
                                            child: Text('S',
                                                style: TextStyle(
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 20),
                                                    fontFamily: 'Metropolis2')),
                                          ),
                                        ),
                                        SizedBox(
                                          width:
                                              Dimensions.widthCalc(context, 15),
                                        ),
                                        Container(
                                          height: Dimensions.heightCalc(
                                              context, 40),
                                          width: Dimensions.widthCalc(
                                              context, 100),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.black87)),
                                          child: Center(
                                            child: Text('M',
                                                style: TextStyle(
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 20),
                                                    fontFamily: 'Metropolis2')),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 90, left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: Dimensions.heightCalc(
                                              context, 40),
                                          width: Dimensions.widthCalc(
                                              context, 100),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.black87)),
                                          child: Center(
                                            child: Text('L',
                                                style: TextStyle(
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 20),
                                                    fontFamily: 'Metropolis2')),
                                          ),
                                        ),
                                        SizedBox(
                                          width:
                                              Dimensions.widthCalc(context, 15),
                                        ),
                                        Container(
                                          height: Dimensions.heightCalc(
                                              context, 40),
                                          width: Dimensions.widthCalc(
                                              context, 100),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.black87)),
                                          child: Center(
                                            child: Text('XL',
                                                style: TextStyle(
                                                    fontSize:
                                                        Dimensions.heightCalc(
                                                            context, 20),
                                                    fontFamily: 'Metropolis2')),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 10, right: 10),
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Text('Size info',
                                            style: TextStyle(
                                                fontSize: Dimensions.heightCalc(
                                                    context, 18),
                                                fontFamily: 'Metropolis2')),
                                        SizedBox(
                                          width: Dimensions.widthCalc(
                                              context, 200),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.arrow_right))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 48,
                                width: 343,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: CustomButton(
                                      text: 'ADD TO CART', onPressed: () {}),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                    child: const Icon(Icons.view_list_outlined))
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
