import 'package:flutter/material.dart';
import 'package:shop_ease/shop_screen/kurthi_screen.dart';
import 'package:shop_ease/shop_screen/croptops_screen.dart';
import 'package:shop_ease/shop_screen/sleeveless_screen.dart';
import 'package:shop_ease/shop_screen/tshirt_screen.dart';

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
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black87,
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
