import 'package:flutter/material.dart';
import 'package:shop_ease/screens/bag_screen/popular_screen.dart';
import 'package:shop_ease/screens/bag_screen/toprated_screen.dart';
import 'package:shop_ease/utilities/dimensions.dart';

import 'newcollection_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: Dimensions.heightCalc(context, 700),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bagbackground.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 300),
                          child:
                              Icon(Icons.sort, color: Colors.white, size: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 20),
                          child: Row(
                            children: [
                              Text(
                                'Bag Collections',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Dimensions.heightCalc(context, 25),
                                  fontFamily: 'Metropolis',
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.widthCalc(context, 60),
                              ),
                              Container(
                                height: Dimensions.heightCalc(context, 35),
                                width: Dimensions.widthCalc(context, 35),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Column(
                      children: [
                        TabBar(
                            labelColor: Colors.black,
                            indicatorColor: Colors.black87,
                            unselectedLabelColor: Colors.black,
                            indicatorSize: TabBarIndicatorSize.label,
                            controller: _tabController,
                            isScrollable: true,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            tabs: [
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.white, width: 5)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Popular",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: Dimensions.heightCalc(
                                              context, 15),
                                        )),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.white, width: 5)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Top Rated",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: Dimensions.heightCalc(
                                              context, 15),
                                        )),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.white, width: 5)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("New Collection",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: Dimensions.heightCalc(
                                              context, 15),
                                        )),
                                  ),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: Dimensions.heightCalc(context, 900),
                          child: TabBarView(
                            controller: _tabController,
                            children: const [
                              PopularScreen(),
                              TopRate(),
                              NewBagCollection(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
