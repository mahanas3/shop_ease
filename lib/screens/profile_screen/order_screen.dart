import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ease/screens/profile_screen/cancelled_screen.dart';
import 'package:shop_ease/screens/profile_screen/deliverd_screen.dart';
import 'package:shop_ease/screens/profile_screen/processing_screen.dart';
import 'package:shop_ease/utilities/dimensions.dart';

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
        backgroundColor: const Color(0x000000ff),
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
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 150),
            child: Text(
              'My Orders',
              style: TextStyle(
                  fontSize: Dimensions.heightCalc(context, 34),
                  fontFamily: 'Metropolis'),
            ),
          ),
          SizedBox(
            height: Dimensions.heightCalc(context, 30),
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
                        'Delivered',
                        style: TextStyle(
                            fontFamily: 'Metropolis2',
                            fontSize: Dimensions.heightCalc(context, 18)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: Tab(
                      child: Text('Processing',
                          style: TextStyle(
                              fontFamily: 'Metropolis2',
                              fontSize: Dimensions.heightCalc(context, 18))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: Tab(
                      child: Text('Cancelled',
                          style: TextStyle(
                              fontFamily: 'Metropolis2',
                              fontSize: Dimensions.heightCalc(context, 18))),
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Delivered(),
                Processing(),
                Cancellation(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
