import 'package:flutter/material.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0x000000ff),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search, color: Colors.black87),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'My Bag',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: Dimensions.heightCalc(context, 30)),
            ),
          )
        ],
      ),
    );
  }
}
