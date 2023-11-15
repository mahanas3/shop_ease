import 'package:flutter/material.dart';
import 'package:shop_ease/shop_screen/kids_page.dart';
import 'package:shop_ease/shop_screen/mens_page.dart';
import 'package:shop_ease/shop_screen/womens_page.dart';

class Catergories extends StatefulWidget {
  const Catergories({super.key});


  @override
  State<Catergories> createState() => _CatergoriesState();
}

class _CatergoriesState extends State<Catergories> with SingleTickerProviderStateMixin {
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
          title: const Padding(
            padding: EdgeInsets.only(left: 55),
            child: Text(
              'Categories',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'popins',
                  color: Colors.black87),
            ),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black87,
            )
          ]),
      body:  Column(children: [
        TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: const [
              Tab(
                child: Text(
                  'Now Playing',
                  style: TextStyle(fontFamily: 'popins2'),
                ),
              ),
              Tab(
                child: Text('Upcoming',
                    style: TextStyle(fontFamily: 'popins2')),
              ),
              Tab(
                child: Text('Top rated',
                    style: TextStyle(fontFamily: 'popins2')),
              ),
            ]),
        Expanded(
          child: TabBarView(controller: _tabController, children: const [
            WomensScreen(),
            MensPage(),
            KidsPage(),
          ]),
        ),
      ]),
    );
  }
}
