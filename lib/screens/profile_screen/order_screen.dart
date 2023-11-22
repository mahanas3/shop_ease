import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> with SingleTickerProviderStateMixin {
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
        elevation: 0,
        actions: const [
          Icon(
            CupertinoIcons.search,
            color: Colors.black87,
          )
        ],
      ),
      body: Column(
        children: [
          const Text(
            'My Orders',
            style: TextStyle(fontSize: 34, fontFamily: 'Metropolis'),
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
                        'Delivered',
                        style: TextStyle(fontFamily: 'POPINS', fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: Tab(
                      child: Text('Processing',
                          style: TextStyle(fontFamily: 'POPINS', fontSize: 18)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: Tab(
                      child: Text('Cancelled',
                          style: TextStyle(fontFamily: 'POPINS', fontSize: 18)),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
