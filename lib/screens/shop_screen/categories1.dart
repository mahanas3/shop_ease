import 'package:flutter/material.dart';
import 'package:shop_ease/screens/shop_screen/womens_screen.dart';
import 'package:shop_ease/utilities/dimensions.dart';
import 'kids_screen.dart';
import 'mens_screen.dart';

class Catergories extends StatefulWidget {
  const Catergories({super.key});

  @override
  State<Catergories> createState() => _CatergoriesState();
}

class _CatergoriesState extends State<Catergories>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Text(
              'Categories',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 18),
                  fontFamily: 'Metropolis',
                  color: Colors.black87),
            ),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black87,
            )
          ]),
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: Dimensions.heightCalc(context, 20),
        ),
        DefaultTabController(
          length: 3,
          child: TabBar(
              labelColor: Colors.black,
              indicatorColor: const Color(0xffDB3022),
              unselectedLabelColor: const Color(0xff222222),
              controller: _tabController,
              isScrollable: true,
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Tab(
                    child: Text(
                      'Women',
                      style: TextStyle(
                          fontFamily: 'Metropolis2',
                          color: Colors.black87,
                          fontSize: Dimensions.heightCalc(context, 18)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Tab(
                    child: Text('Men',
                        style: TextStyle(
                            fontFamily: 'Metropolis2',
                            color: Colors.black87,
                            fontSize: Dimensions.heightCalc(context, 18))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Tab(
                    child: Text('Kids',
                        style: TextStyle(
                            fontFamily: 'Metropolis2',
                            color: Colors.black87,
                            fontSize: Dimensions.heightCalc(context, 18))),
                  ),
                ),
              ]),
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: const [
            WomenScreen(),
            MensPage(),
            KidsPage(),
          ]),
        ),
      ]),
    );
  }
}
